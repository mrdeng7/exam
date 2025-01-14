package com.exam.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.config.exception.CommonException;
import com.exam.config.satoken.SecurityUtils;
import com.exam.dto.*;
import com.exam.entity.DataWithNum;
import com.exam.entity.ExamPaperQuestionOfKeyEntity;
import com.exam.entity.ExamsEntity;
import com.exam.po.*;
import com.exam.dao.ExamsDao;
import com.exam.service.*;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.util.IntToSmallChineseNumber;
import com.exam.vo.*;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.*;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Service
@Slf4j
public class ExamsServiceImpl extends ServiceImpl<ExamsDao, ExamsBean> implements IExamsService {
    @Resource
    IStudentService studentService;
    @Resource
    IExamPaperService examPaperService;
    @Resource
    IExamsService examsService;
    @Resource
    IAnswerSituationService answerSituationService;
    @Resource
    IQuestionService questionService;
    @Resource
    IComposeOfExamService composeOfExamService;
    @Resource
    IExamPaperQuestionService examPaperQuestionService;
    @Resource
    IQuestionTypeService questionTypeService;
    @Resource
    IOptionService optionService;
    @Resource
    IAnswerDetailsService answerDetailsService;
    @Resource
    ITeacherService teacherService;

    @Override
    public DataWithNum<List<ExamInfoResp>> queryRecentExams(QueryRecentExamsParam param) throws CommonException {
        Integer userId = param.getUserId();
        // 如果参数中没传递用户id，从session中获取
        if (ObjectUtil.isNull(userId)){
            LoginRespVO loginRespVO = SecurityUtils.getUser();
            if (loginRespVO == null){
                throw CommonException.exception_400("账号未登录");
            }
            userId = loginRespVO.getUserId();
        }
        if (ObjectUtil.isNull(userId)){
            throw CommonException.exception_400("未知用户");
        }
        // 查询学生信息
        StudentBean one = studentService.getOne(new QueryWrapper<StudentBean>().lambda().eq(StudentBean::getUserId, userId));
        if (one == null){
            throw CommonException.exception_400("未知学生");
        }
        // 查询学生所属的班级id
        Integer classId = one.getClassId();
        if (ObjectUtil.isNull(classId)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }

        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        int start = pageIndex * pageSize;
        // 分页查询 考试信息
        List<ExamsEntity> examsEntities = baseMapper.queryRecentExams(","+classId+",", start, pageSize);
        long total = examsEntities.size();
        if (CollectionUtil.isEmpty(examsEntities)){
            return new DataWithNum<>(Collections.emptyList(), total);
        }
        // 获取 学生的试卷完成状态
        List<AnswerSituationBean> answerSituationBeans = answerSituationService.list(new QueryWrapper<AnswerSituationBean>().lambda().eq(AnswerSituationBean::getStudentId, one.getStudentId()));
        Map<Integer, AnswerSituationBean> answerSituationBeanMap = new HashMap<>();
        if (CollectionUtil.isNotEmpty(answerSituationBeans)){
            answerSituationBeanMap = answerSituationBeans.stream().collect(Collectors.toMap(AnswerSituationBean::getExamId, sig -> sig));
        }

        long now = System.currentTimeMillis();
        Map<Integer, AnswerSituationBean> finalAnswerSituationBeanMap = answerSituationBeanMap;

        List<ExamInfoResp> datas = new ArrayList<>(examsEntities.size());

        List<AnswerSituationBean> needAddAnswerSituationBeans = new ArrayList<>();

        for (ExamsEntity sig : examsEntities) {
            ExamInfoResp examInfoResp = new ExamInfoResp();
            BeanUtil.copyProperties(sig, examInfoResp);
            Integer examId = sig.getExamId();

            Long deadline = sig.getDeadline();
            Long openingHours = sig.getOpeningHours();
            // 开放时间 > 现在， 考试未开始
            if (openingHours > now){
                examInfoResp.setExamStatus(4);
                datas.add(examInfoResp);
                continue;
            }

            // 是否展示分数
            Integer announceTheResult = sig.getAnnounceTheResult();
            examInfoResp.setAnnounceTheResult(announceTheResult);
            // 判断是否参加了考试
            if (finalAnswerSituationBeanMap.containsKey(examId) && finalAnswerSituationBeanMap.get(examId).getSubmitTime() != null){
                examInfoResp.setExamStatus(1);
                AnswerSituationBean answerSituationBean = finalAnswerSituationBeanMap.get(examId);
                if (announceTheResult == 1){
                    examInfoResp.setTotalScore(answerSituationBean.getTotalScore());
                }
            }
            // 开放了考试，未答题, 考试已经超时了（设置为已完成考试，分数为0）
            else if (deadline <= now) {
                examInfoResp.setExamStatus(1);
                // 过期的情况 需要增加一条记录
                if (!finalAnswerSituationBeanMap.containsKey(examId)){
                    needAddAnswerSituationBeans.add(new AnswerSituationBean(examId, one.getStudentId()));
                }
            }
            else {
                // 开放了考试，未答题
                examInfoResp.setExamStatus(2);
            }
            datas.add(examInfoResp);
        }

        if (CollectionUtil.isNotEmpty(needAddAnswerSituationBeans)){
            try {
                answerSituationService.saveBatch(needAddAnswerSituationBeans);
            }catch (Exception e){
                log.error("更新答题记录异常，异常原因:{}",e.getMessage());
            }
        }

        return new DataWithNum<>(datas, total);
    }

    @Override
    public List<ExamsClassifyResp> queryExamsClassifyInfo(QueryExamsClassifyInfoParam param) {
        Integer examPaperId = param.getExamPaperId();
        // 获取试卷的组成
        List<ComposeOfExamBean> composeOfExamBeans = composeOfExamService.list(new QueryWrapper<ComposeOfExamBean>().lambda().eq(ComposeOfExamBean::getExamPaperId, examPaperId));
        if (CollectionUtil.isEmpty(composeOfExamBeans)){
            return Collections.emptyList();
        }
        Set<Integer> questionTypeIds = composeOfExamBeans.stream().map(ComposeOfExamBean::getQuestionTypeId).collect(Collectors.toSet());
        List<QuestionTypeBean> list = questionTypeService.list(new QueryWrapper<QuestionTypeBean>().lambda().in(QuestionTypeBean::getQuestionTypeId, questionTypeIds));
        Map<Integer, String> questionTypeMap = list.stream().collect(Collectors.toMap(QuestionTypeBean::getQuestionTypeId, QuestionTypeBean::getQuestionTypeName));


        // 根据编号排序
        List<ExamsClassifyResp> datas = composeOfExamBeans.stream().map(sig -> {
            ExamsClassifyResp tmp = new ExamsClassifyResp();
            tmp.setComposeOfExamId(sig.getComposeOfExamId());
            tmp.setNumber(sig.getNumber());
            tmp.setQuestionTypeId(sig.getQuestionTypeId());
            tmp.setQuestionTypeName(questionTypeMap.get(sig.getQuestionTypeId()));
            tmp.setScoreForEachQuestion(sig.getScoreForEachQuestion());
            tmp.setQuantity(sig.getQuantity());

            return tmp;
        }).collect(Collectors.toList());

        return datas;
    }

    @Override
    public List<ExamsDetailResp> queryExamsDetail(QueryExamsDetailParam param) throws CommonException {
        LoginRespVO loginRespVO = SecurityUtils.getUser();
        if (loginRespVO == null){
            throw CommonException.exception_400("账号未登录");
        }
        Integer studentId = loginRespVO.getTeacherOrStudentId();
        Integer examPaperId = param.getExamPaperId();
        //查询 用户所属的班级
        StudentBean studentBean = studentService.getOne(new QueryWrapper<StudentBean>().lambda().eq(StudentBean::getUserId, loginRespVO.getUserId()));
        // 查询试卷所属的考试
        ExamsBean examsBean = examsService.getOne(new QueryWrapper<ExamsBean>().lambda().eq(ExamsBean::getExamPaperId, examPaperId).like(ExamsBean::getClassId, ","+studentBean.getClassId()+","));
        if (examsBean == null){
            return Collections.emptyList();
        }

        // 查询是否已经答题过
        AnswerSituationBean answerSituationBean = answerSituationService.getOne(new QueryWrapper<AnswerSituationBean>().lambda().eq(AnswerSituationBean::getExamId, examsBean.getExamId()).eq(AnswerSituationBean::getStudentId, studentId));
        if (answerSituationBean != null && answerSituationBean.getSubmitTime() != null){
            throw CommonException.exception_400("不能重复答题");
        }


        // 获取试卷的组成
        List<ComposeOfExamBean> composeOfExamBeans = composeOfExamService.list(new QueryWrapper<ComposeOfExamBean>().lambda().eq(ComposeOfExamBean::getExamPaperId, examPaperId));
        if (CollectionUtil.isEmpty(composeOfExamBeans)){
            return Collections.emptyList();
        }
        // 获取所有的试卷组成id
        Set<Integer> composeOfExamIds = composeOfExamBeans.stream().map(ComposeOfExamBean::getComposeOfExamId).collect(Collectors.toSet());

        // 获取 试卷上的题目
        List<ExamPaperQuestionBean> list = examPaperQuestionService.list(new QueryWrapper<ExamPaperQuestionBean>().lambda().in(ExamPaperQuestionBean::getComposeOfExamId, composeOfExamIds));
        if (CollectionUtil.isEmpty(list)){
            return Collections.emptyList();
        }

        // 题型
        Set<Integer> questionTypeIds = composeOfExamBeans.stream().map(ComposeOfExamBean::getQuestionTypeId).collect(Collectors.toSet());
        List<QuestionTypeBean> questionTypeBeans = questionTypeService.list(new QueryWrapper<QuestionTypeBean>().lambda().in(QuestionTypeBean::getQuestionTypeId, questionTypeIds));
        Map<Integer, String> questionTypeMap = questionTypeBeans.stream().collect(Collectors.toMap(QuestionTypeBean::getQuestionTypeId, QuestionTypeBean::getQuestionTypeName));


        // 根据题目 id  ， 查询题目的详情 以及 选项
        Set<Integer> questionIds = list.stream().map(ExamPaperQuestionBean::getQuestionId).collect(Collectors.toSet());
        List<QuestionBean> questionBeans = questionService.list(new QueryWrapper<QuestionBean>().lambda().in(QuestionBean::getQuestionId, questionIds));
        if (CollectionUtil.isEmpty(questionBeans)){
            return Collections.emptyList();
        }
        Map<Integer, QuestionBean> questionMap = questionBeans.stream().collect(Collectors.toMap(QuestionBean::getQuestionId, sig -> sig));

        List<OptionBean> optionBeans = optionService.list(new QueryWrapper<OptionBean>().lambda().in(OptionBean::getQuestionId, questionIds));

        // 根据编号排序
        List<ExamsDetailResp> datas = composeOfExamBeans.stream().map(sig -> {
            // 大题
            ExamsDetailResp tmp = new ExamsDetailResp();
            tmp.setComposeOfExamId(sig.getComposeOfExamId());
            tmp.setNumber(sig.getNumber());
            tmp.setQuestionTypeId(sig.getQuestionTypeId());
            tmp.setQuestionTypeName(questionTypeMap.get(sig.getQuestionTypeId()));
            tmp.setScoreForEachQuestion(sig.getScoreForEachQuestion());
            tmp.setQuantity(sig.getQuantity());

            // 小题
            List<ExamsDetailResp.ExamsPaperQuestionInfo> examsPaperQuestionInfos = list.stream().filter(item -> item.getComposeOfExamId().equals(sig.getComposeOfExamId())).map(item -> {
                ExamsDetailResp.ExamsPaperQuestionInfo ExamsPaperQuestionTmp = new ExamsDetailResp.ExamsPaperQuestionInfo();
                ExamsPaperQuestionTmp.setExamPaperQuestionId(item.getExamPaperQuestionId());
                ExamsPaperQuestionTmp.setNumber(item.getNumber());
                ExamsPaperQuestionTmp.setQuestionId(item.getQuestionId());
                QuestionBean questionBean = questionMap.get(item.getQuestionId());
                if (questionBean != null) {
                    ExamsPaperQuestionTmp.setQuestion(questionBean.getQuestion());
                }

                // 选项
                List<ExamsDetailResp.OptionInfo> optionInfos = optionBeans.stream().filter(o -> o.getQuestionId().equals(item.getQuestionId())).map(o -> {
                    ExamsDetailResp.OptionInfo optionInfo = new ExamsDetailResp.OptionInfo();
                    optionInfo.setOptionNumber(o.getOptionNumber());
                    optionInfo.setContent(o.getContent());
                    return optionInfo;
                }).collect(Collectors.toList());

                ExamsPaperQuestionTmp.setOptionInfos(optionInfos);

                return ExamsPaperQuestionTmp;
            }).collect(Collectors.toList());

            tmp.setExamPaperQuestions(examsPaperQuestionInfos);

            return tmp;
        }).collect(Collectors.toList());

        // 新增一条答题记录
        if (answerSituationBean == null){
            answerSituationBean = new AnswerSituationBean();
            answerSituationBean.setExamId(examsBean.getExamId());
            answerSituationBean.setAnswerTime(System.currentTimeMillis());
            answerSituationBean.setStudentId(studentId);
            answerSituationBean.setTotalScore(new BigDecimal("0.0"));
        }else {
            answerSituationBean.setAnswerTime(System.currentTimeMillis());
            answerSituationBean.setTotalScore(new BigDecimal("0.0"));
        }
        answerSituationService.saveOrUpdate(answerSituationBean);

        return datas;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean addExams(AddExamParam param) throws CommonException {
        Integer userId = param.getUserId();
        if (ObjectUtil.isNull(userId)){
            LoginRespVO loginRespVO = SecurityUtils.getUser();
            if (loginRespVO == null){
                throw CommonException.exception_400("账号未登录");
            }
            userId = loginRespVO.getUserId();
        }
        TeacherBean teacherBean = teacherService.getOne(new QueryWrapper<TeacherBean>().lambda().eq(TeacherBean::getUserId, userId));
        if (teacherBean == null){
            throw CommonException.exception_400("未找到老师信息");
        }
        Integer teacherId = teacherBean.getTeacherId();
        ExamPaperBean examPaperBean = new ExamPaperBean();
        BeanUtil.copyProperties(param, examPaperBean);
        examPaperBean.setTeacherId(teacherId);
        // 默认 非禁用 状态
        examPaperBean.setStatus(0);
        boolean save = examPaperService.save(examPaperBean);
        if (!save){
            return false;
        }
        // 试卷id
        Integer examPaperId = examPaperBean.getExamPaperId();

        List<Integer> classIds = param.getClassIds();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(",");
        for (Integer classId : classIds) {
            stringBuilder.append(classId).append(",");
        }
        String join = stringBuilder.toString();
        ExamsBean examsBean = new ExamsBean();
        BeanUtil.copyProperties(param, examsBean);
        examsBean.setExamPaperId(examPaperId);
        examsBean.setTeacherId(teacherId);
        examsBean.setClassId(join);

        boolean save1 = this.save(examsBean);
        if (!save1){
            return false;
        }


        Integer number = 1;
        // 随机生成 题目
        // 选择题
        Integer choiceQuestionNum = param.getChoiceQuestionNum();
        BigDecimal choiceQuestionScore = param.getChoiceQuestionScore();
        number = saveExamQuestionInfo(examPaperId, choiceQuestionScore, number, 1, choiceQuestionNum);

        // 判断题
        Integer judgmentQuestionNum = param.getJudgmentQuestionNum();
        BigDecimal judgmentQuestionScore = param.getJudgmentQuestionScore();
        number = saveExamQuestionInfo(examPaperId, judgmentQuestionScore, number, 2, judgmentQuestionNum);

        // 计算题
        Integer calculationQuestionNum = param.getCalculationQuestionNum();
        BigDecimal calculationQuestionScore = param.getCalculationQuestionScore();
        number = saveExamQuestionInfo(examPaperId, calculationQuestionScore, number, 3, calculationQuestionNum);

        // 简答题
        Integer simpleQuestionNum = param.getSimpleQuestionNum();
        BigDecimal simpleQuestionScore = param.getSimpleQuestionScore();
        number = saveExamQuestionInfo(examPaperId, simpleQuestionScore, number, 4, simpleQuestionNum);


        return true;
    }

    /**
     * 存储 试卷下的题目
     * @param examPaperId
     * @param number
     * @param questionTypeId
     * @param questionNum
     * @return
     */
    @Transactional(rollbackFor = Exception.class)
    public Integer saveExamQuestionInfo(Integer examPaperId, BigDecimal questionScore, Integer number, Integer questionTypeId, Integer questionNum){
        if (ObjectUtil.isNull(examPaperId) || ObjectUtil.isNull(questionNum) || ObjectUtil.isNull(questionTypeId) || questionNum <=0){
            return number;
        }

        String numberCh = IntToSmallChineseNumber.ToCH(number);
        ComposeOfExamBean composeOfExamBean = new ComposeOfExamBean();
        composeOfExamBean.setExamPaperId(examPaperId);
        composeOfExamBean.setNumber(numberCh);
        composeOfExamBean.setQuestionTypeId(questionTypeId);
        composeOfExamBean.setScoreForEachQuestion(questionScore);
        composeOfExamBean.setQuantity(questionNum);

        // 对于 生成的题目 来说，可能题库中数量不够，导致和预设的不一致， 此次改为 真实的题目数量
        List<QuestionBean> questionBeans = questionService.randomQueryQuestionInfo(questionTypeId, null, null, questionNum);
        if (CollectionUtil.isEmpty(questionBeans)){
            return number;
        }
        composeOfExamBean.setQuantity(questionBeans.size());
        boolean save = composeOfExamService.save(composeOfExamBean);

        List<ExamPaperQuestionBean> examPaperQuestionBeans = new ArrayList<>(questionNum);

        for (int i = 0; i < questionBeans.size(); i++) {
            QuestionBean sig = questionBeans.get(i);
            ExamPaperQuestionBean tmp = new ExamPaperQuestionBean();
            tmp.setComposeOfExamId(composeOfExamBean.getComposeOfExamId());
            tmp.setQuestionId(sig.getQuestionId());
            tmp.setNumber((i+1));
            examPaperQuestionBeans.add(tmp);
        }

        examPaperQuestionService.saveBatch(examPaperQuestionBeans);
        return number + 1;
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public Boolean submitExams(SubmitExamsParam param) throws CommonException {
        LoginRespVO loginRespVO = SecurityUtils.getUser();
        if (loginRespVO == null){
            throw CommonException.exception_400("账号未登录");
        }

        Integer studentId = loginRespVO.getTeacherOrStudentId();
        if (ObjectUtil.isNull(studentId)){
            throw CommonException.exception_400("未知用户");
        }

        Integer examId = param.getExamId();
        // 修改答题记录中的答题时间
        AnswerSituationBean answerSituationBean = answerSituationService.getOne(new QueryWrapper<AnswerSituationBean>().lambda().eq(AnswerSituationBean::getStudentId, studentId).eq(AnswerSituationBean::getExamId, examId));
        boolean save = true;
        BigDecimal totalScore = new BigDecimal(0);
        // 答题详情记录， 客观题 自动批阅
        List<SubmitExamsParam.QuestionAnswerInfo> questionAnswerInfoList = param.getQuestionAnswerInfoList();
        if (CollectionUtil.isNotEmpty(questionAnswerInfoList)){
            // 获取 客观题 每道题的分值
            Integer examPaperId = param.getExamPaperId();
            List<ComposeOfExamBean> composeOfExamBeanList = composeOfExamService.queryNoSubjectWhetherInfo(examPaperId);
            Map<Integer, BigDecimal> questionTypeScoreMaps = composeOfExamBeanList.stream().collect(Collectors.toMap(ComposeOfExamBean::getQuestionTypeId, ComposeOfExamBean::getScoreForEachQuestion));
            Set<Integer> questionTypeIds = questionTypeScoreMaps.keySet();
            // 获取 客观题的 正确答案
            Map<Integer, ExamPaperQuestionOfKeyEntity> questionKeyMap = new HashMap<>();
            if (CollectionUtil.isNotEmpty(questionTypeIds)){
                List<Integer> examPaperQuestionIds = questionAnswerInfoList.stream().map(SubmitExamsParam.QuestionAnswerInfo::getExamPaperQuestionId).distinct().collect(Collectors.toList());
                List<ExamPaperQuestionOfKeyEntity> examPaperQuestionOfKeyEntities = baseMapper.queryExamPaperQuestionOfKey(new ArrayList<>(questionTypeIds), examPaperQuestionIds);
                questionKeyMap = examPaperQuestionOfKeyEntities.stream().collect(Collectors.toMap(ExamPaperQuestionOfKeyEntity::getExamPaperQuestionId, sig -> sig));
            }


            List<AnswerDetailsBean> answerDetailsBeanList = new ArrayList<>();
            for (SubmitExamsParam.QuestionAnswerInfo sig : questionAnswerInfoList) {
                AnswerDetailsBean answerDetailsBean = new AnswerDetailsBean();
                answerDetailsBean.setAnswerSituationId(answerSituationBean.getAnswerSituationId());
                Integer examPaperQuestionId = sig.getExamPaperQuestionId();
                answerDetailsBean.setExamPaperQuestionId(examPaperQuestionId);
                String questionKeyByUser = sig.getQuestionKeyByUser();
                answerDetailsBean.setQuestionKeyByUser(questionKeyByUser);

                if (questionKeyMap.containsKey(examPaperQuestionId)){
                    ExamPaperQuestionOfKeyEntity examPaperQuestionOfKeyEntity = questionKeyMap.get(examPaperQuestionId);
                    String rightKey = examPaperQuestionOfKeyEntity.getQuestionKey();
                    Integer questionTypeId = examPaperQuestionOfKeyEntity.getQuestionTypeId();
                    // 分值
                    BigDecimal bigDecimal = questionTypeScoreMaps.get(questionTypeId);

                    // 答案相同
                    if (StrUtil.isNotBlank(rightKey)  && StrUtil.isNotBlank(questionKeyByUser) && ObjectUtil.equal(rightKey.trim(), questionKeyByUser.trim())){
                        answerDetailsBean.setScore(bigDecimal);
                        answerDetailsBean.setStatus(1);
                        totalScore = totalScore.add(bigDecimal);
                    }
                }
                answerDetailsBeanList.add(answerDetailsBean);
            }
            save = answerDetailsService.saveBatch(answerDetailsBeanList);
        }

        answerSituationBean.setSubmitTime(System.currentTimeMillis());
        answerSituationBean.setTotalScore(totalScore);
        save = answerSituationService.updateById(answerSituationBean);
        return save;
    }


    @Override
    public DataWithNum<List<StudentExamsResp>> queryReferenceList(QueryReferenceListParam param) {
        Integer examId = param.getExamId();
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        int start = pageIndex * pageSize;
        // 查询考试信息
        ExamsBean one = examsService.getOne(new QueryWrapper<ExamsBean>().lambda().eq(ExamsBean::getExamId, examId));
        if (one == null || StrUtil.isBlank(one.getClassId())){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        String classId = one.getClassId();
        String[] split = classId.split(",");
        List<String> classIds = new ArrayList<>();
        for (String s : split) {
            if (StrUtil.isBlank(s)){
                continue;
            }
            classIds.add(s);
        }
        if (CollectionUtil.isEmpty(classIds)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        // 拿到班级的所有学生
        List<StudentBean> studentBeans = studentService.list(new QueryWrapper<StudentBean>().lambda().in(StudentBean::getClassId, classIds));
        long total = studentBeans.size();
        if (CollectionUtil.isEmpty(studentBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        List<Integer> studentIds = studentBeans.stream().map(StudentBean::getStudentId).collect(Collectors.toList());
        // 查询已经 参加了考试的学生
        List<AnswerSituationBean> answerSituationBeans = answerSituationService.list(new QueryWrapper<AnswerSituationBean>().lambda()
                .eq(AnswerSituationBean::getExamId, examId)
                .in(AnswerSituationBean::getStudentId, studentIds)
                .isNotNull(AnswerSituationBean::getSubmitTime)
        );
        Map<Integer, AnswerSituationBean> answerSituationBeanMap = answerSituationBeans.stream().collect(Collectors.toMap(AnswerSituationBean::getStudentId, sig -> sig));

        List<StudentExamsResp> datas = studentBeans.stream().map(sig -> {
            StudentExamsResp resp  = new StudentExamsResp();
            resp.setStudentName(sig.getStudentName());
            resp.setStudentNo(sig.getStudentNo());
            resp.setUserId(sig.getUserId());
            AnswerSituationBean answerSituationBean = answerSituationBeanMap.get(sig.getStudentId());
            resp.setTakeTheExam(answerSituationBean != null);
            if (answerSituationBean != null){
                resp.setAnswerSituationId(answerSituationBean.getAnswerSituationId());
                resp.setReviewed(answerSituationBean.getReviewed());
            }
            return resp;
        }).collect(Collectors.toList());

        Boolean examined = param.getExamined();
        if (examined == null){
            return new DataWithNum<>(datas, total);
        }
        // 参加考试 && 未被批阅的
        datas = datas.stream().filter(o-> ObjectUtil.equal(o.getTakeTheExam(), examined) && !Boolean.TRUE.equals(o.getReviewed())).collect(Collectors.toList());
        total = datas.size();
        return new DataWithNum<>(datas, total);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public BigDecimal markingPapers(MarkingPapersParam param) {
        List<MarkingPapersParam.ScoringSituation> scoringSituations = param.getScoringSituations();
        if (CollectionUtil.isNotEmpty(scoringSituations)){
            List<AnswerDetailsBean> answerDetailsBeans = scoringSituations.stream().map(sig -> {
                AnswerDetailsBean answerDetailsBean = new AnswerDetailsBean();
                answerDetailsBean.setAnswerDetailId(sig.getAnswerDetailId());
                BigDecimal score = sig.getScore();
                if (score == null) {
                    score = new BigDecimal("0.0");
                }
                answerDetailsBean.setScore(score);
                return answerDetailsBean;
            }).collect(Collectors.toList());
            if (CollectionUtil.isNotEmpty(answerDetailsBeans)){
                boolean b = answerDetailsService.saveOrUpdateBatch(answerDetailsBeans);
            }
        }

        // 查询所有，得到总成绩
        Integer answerSituationId = param.getAnswerSituationId();
        List<AnswerDetailsBean> list = answerDetailsService.list(new QueryWrapper<AnswerDetailsBean>().lambda().eq(AnswerDetailsBean::getAnswerSituationId, answerSituationId));
        if (CollectionUtil.isEmpty(list)){
            return new BigDecimal("0.0");
        }

        BigDecimal total = new BigDecimal("0.0");
        for (AnswerDetailsBean answerDetailsBean : list) {
            BigDecimal score = answerDetailsBean.getScore();
            if (score == null){
                continue;
            }
            total = total.add(score);
        }

        answerSituationService.updateTotalScoreById(answerSituationId, total);
        return total;
    }

    @Override
    public List<ExamsPaperInfoResp> showExamsPaperInfo(ShowExamsPaperInfoParam param) {
        Integer answerSituationId = param.getAnswerSituationId();
        ExamsBean examsBean = baseMapper.queryExamsByAnswerSituationId(answerSituationId);
        if (examsBean == null){
            return Collections.emptyList();
        }

        Integer examPaperId = examsBean.getExamPaperId();

        // 获取试卷的组成
        List<ComposeOfExamBean> composeOfExamBeans = composeOfExamService.list(new QueryWrapper<ComposeOfExamBean>().lambda().eq(ComposeOfExamBean::getExamPaperId, examPaperId));
        if (CollectionUtil.isEmpty(composeOfExamBeans)){
            return Collections.emptyList();
        }
        // 获取所有的试卷组成id
        Set<Integer> composeOfExamIds = composeOfExamBeans.stream().map(ComposeOfExamBean::getComposeOfExamId).collect(Collectors.toSet());

        // 获取 试卷上的题目(大题)
        List<ExamPaperQuestionBean> examPaperQuestionBeans = examPaperQuestionService.list(new QueryWrapper<ExamPaperQuestionBean>().lambda().in(ExamPaperQuestionBean::getComposeOfExamId, composeOfExamIds));
        if (CollectionUtil.isEmpty(examPaperQuestionBeans)){
            return Collections.emptyList();
        }

        // 查询 答题记录详情
        List<AnswerDetailsBean> answerDetailsBeans = answerDetailsService.list(new QueryWrapper<AnswerDetailsBean>().lambda().eq(AnswerDetailsBean::getAnswerSituationId, answerSituationId));
        Map<Integer, AnswerDetailsBean> answerDetailsBeanMap = answerDetailsBeans.stream().collect(Collectors.toMap(AnswerDetailsBean::getExamPaperQuestionId, sig -> sig));


        // 题型
        Set<Integer> questionTypeIds = composeOfExamBeans.stream().map(ComposeOfExamBean::getQuestionTypeId).collect(Collectors.toSet());
        List<QuestionTypeBean> questionTypeBeans = questionTypeService.list(new QueryWrapper<QuestionTypeBean>().lambda().in(QuestionTypeBean::getQuestionTypeId, questionTypeIds));
        Map<Integer, String> questionTypeMap = questionTypeBeans.stream().collect(Collectors.toMap(QuestionTypeBean::getQuestionTypeId, QuestionTypeBean::getQuestionTypeName));


        // 根据题目 id  ， 查询题目的详情 以及 选项
        Set<Integer> questionIds = examPaperQuestionBeans.stream().map(ExamPaperQuestionBean::getQuestionId).collect(Collectors.toSet());
        List<QuestionBean> questionBeans = questionService.list(new QueryWrapper<QuestionBean>().lambda().in(QuestionBean::getQuestionId, questionIds));
        if (CollectionUtil.isEmpty(questionBeans)){
            return Collections.emptyList();
        }
        Map<Integer, QuestionBean> questionMap = questionBeans.stream().collect(Collectors.toMap(QuestionBean::getQuestionId, sig -> sig));

        List<OptionBean> optionBeans = optionService.list(new QueryWrapper<OptionBean>().lambda().in(OptionBean::getQuestionId, questionIds));

        // 根据编号排序
        List<ExamsPaperInfoResp> result = composeOfExamBeans.stream().map(sig -> {
            // 大题
            ExamsPaperInfoResp tmp = new ExamsPaperInfoResp();
            tmp.setComposeOfExamId(sig.getComposeOfExamId());
            tmp.setNumber(sig.getNumber());
            tmp.setQuestionTypeId(sig.getQuestionTypeId());
            tmp.setQuestionTypeName(questionTypeMap.get(sig.getQuestionTypeId()));
            tmp.setScoreForEachQuestion(sig.getScoreForEachQuestion());
            tmp.setQuantity(sig.getQuantity());

            // 小题

            List<ExamsPaperInfoResp.ExamsPaperAnswerDetail> examsPaperQuestionInfos = examPaperQuestionBeans.stream().filter(item -> item.getComposeOfExamId().equals(sig.getComposeOfExamId())).map(item -> {

                ExamsPaperInfoResp.ExamsPaperAnswerDetail ExamsPaperQuestionTmp = new ExamsPaperInfoResp.ExamsPaperAnswerDetail();
                ExamsPaperQuestionTmp.setExamPaperQuestionId(item.getExamPaperQuestionId());
                ExamsPaperQuestionTmp.setNumber(item.getNumber());
                ExamsPaperQuestionTmp.setQuestionId(item.getQuestionId());
                QuestionBean questionBean = questionMap.get(item.getQuestionId());
                if (questionBean != null) {
                    ExamsPaperQuestionTmp.setQuestion(questionBean.getQuestion());
                    ExamsPaperQuestionTmp.setQuestionKey(questionBean.getQuestionKey());
                }

                // 学生的答案
                Integer examPaperQuestionId = item.getExamPaperQuestionId();
                if (answerDetailsBeanMap.containsKey(examPaperQuestionId)){
                    AnswerDetailsBean answerDetailsBean = answerDetailsBeanMap.get(examPaperQuestionId);
                    ExamsPaperQuestionTmp.setQuestionKeyByUser(answerDetailsBean.getQuestionKeyByUser());
                    ExamsPaperQuestionTmp.setCorrect(ObjectUtil.equal(answerDetailsBean.getStatus(), 1));
                    ExamsPaperQuestionTmp.setAnswerDetailId(answerDetailsBean.getAnswerDetailId());
                }

                // 选项
                List<ExamsDetailResp.OptionInfo> optionInfos = optionBeans.stream().filter(o -> o.getQuestionId().equals(item.getQuestionId())).map(o -> {
                    ExamsDetailResp.OptionInfo optionInfo = new ExamsDetailResp.OptionInfo();
                    optionInfo.setOptionNumber(o.getOptionNumber());
                    optionInfo.setContent(o.getContent());
                    return optionInfo;
                }).collect(Collectors.toList());

                ExamsPaperQuestionTmp.setOptionInfos(optionInfos);

                return ExamsPaperQuestionTmp;
            }).collect(Collectors.toList());

            tmp.setExamsPaperAnswerDetails(examsPaperQuestionInfos);

            return tmp;
        }).collect(Collectors.toList());

        return result;
    }

    @Override
    public DataWithNum<List<ExamsResp>> queryExamsInfo(QueryExamParam param) {
        // 查询所有的考试信息
        List<ExamsBean> examsBeans = new ArrayList<>();
        long total = 0L;
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        if (pageSize == -1){
            examsBeans = this.list(new QueryWrapper<ExamsBean>().lambda().orderByDesc(ExamsBean::getOpeningHours));
            total = examsBeans.size();
        }else {
            Page<ExamsBean> page = new Page<>(pageIndex, pageSize);
            Page<ExamsBean> page1 = this.page(page, new QueryWrapper<ExamsBean>().lambda().orderByDesc(ExamsBean::getOpeningHours));
            examsBeans = page1.getRecords();
            total = page1.getTotal();
        }

        if (CollectionUtil.isEmpty(examsBeans)){
            return new DataWithNum<>(Collections.emptyList(), total);
        }

        // 查询关联的试卷信息
        Set<Integer> examPaperIds = examsBeans.stream().map(ExamsBean::getExamPaperId).collect(Collectors.toSet());

        List<ExamPaperBean> examPaperBeans = examPaperService.list(new QueryWrapper<ExamPaperBean>().lambda().in(ExamPaperBean::getExamPaperId, examPaperIds));
        Map<Integer, ExamPaperBean> examPaperBeanMap = new HashMap<>();
        if (CollectionUtil.isNotEmpty(examPaperBeans)){
            examPaperBeanMap = examPaperBeans.stream().collect(Collectors.toMap(ExamPaperBean::getExamPaperId, sig -> sig));
        }

        // 查询是否有学生  已考 未被批阅,(有答题记录，说明 有考过的  学生)
        Set<Integer> examIds = examsBeans.stream().map(ExamsBean::getExamId).collect(Collectors.toSet());

        List<AnswerSituationBean> list = answerSituationService.list(new QueryWrapper<AnswerSituationBean>().lambda()
                .in(AnswerSituationBean::getExamId, examIds).isNotNull(AnswerSituationBean::getSubmitTime));
        Set<Integer> takeTheExamIds = list.stream().filter(sig -> !Boolean.TRUE.equals(sig.getReviewed())).map(AnswerSituationBean::getExamId).collect(Collectors.toSet());

        Map<Integer, ExamPaperBean> finalExamPaperBeanMap = examPaperBeanMap;
        List<ExamsResp> datas = examsBeans.stream().map(sig -> {
            ExamsResp examsResp = new ExamsResp();
            BeanUtil.copyProperties(sig, examsResp);
            Integer examPaperId = examsResp.getExamPaperId();
            if (finalExamPaperBeanMap.containsKey(examPaperId)){
                ExamPaperBean examPaperBean = finalExamPaperBeanMap.get(examPaperId);
                examsResp.setPaperName(examPaperBean.getPaperName());
                examsResp.setTeacherId(examPaperBean.getTeacherId());
                examsResp.setStatus(examPaperBean.getStatus());
                examsResp.setDescription(examPaperBean.getDescription());
            }
            examsResp.setTakeTheExam(takeTheExamIds.contains(examsResp.getExamId()));
            return examsResp;
        }).collect(Collectors.toList());

        return new DataWithNum<>(datas, total);
    }

    @Override
    public Boolean updateExamsInfo(UpdateExamsInfoParam param) {
        Integer examId = param.getExamId();


        ExamsBean examsBean = new ExamsBean();
        examsBean.setExamId(examId);
        examsBean.setOpeningHours(param.getOpeningHours());
        examsBean.setDeadline(param.getDeadline());
        examsBean.setDuration(param.getDuration());
        examsBean.setExplainInfo(param.getExplainInfo());
        examsBean.setAnnounceTheResult(param.getAnnounceTheResult());
        examsBean.setExamPaperId(param.getExamPaperId());

        return this.updateById(examsBean);
    }

}
