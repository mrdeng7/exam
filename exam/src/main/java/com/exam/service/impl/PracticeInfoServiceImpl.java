package com.exam.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.config.exception.CommonException;
import com.exam.config.satoken.SecurityUtils;
import com.exam.dto.BatchSubmitPracticeParam;
import com.exam.dto.QueryClassifyInfoParam;
import com.exam.dto.ReviewOfIncorrectQuestionsParam;
import com.exam.dto.SubmitPracticeParam;
import com.exam.entity.DataWithNum;
import com.exam.po.*;
import com.exam.dao.PracticeInfoDao;
import com.exam.service.*;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.vo.*;
import io.swagger.models.auth.In;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.*;
import java.util.stream.Collectors;
import java.util.stream.Stream;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
@Service
public class PracticeInfoServiceImpl extends ServiceImpl<PracticeInfoDao, PracticeInfoBean> implements IPracticeInfoService {

    @Resource
    IPracticeDetailService practiceDetailService;

    @Resource
    IAnswerRecordService answerRecordService;

    @Resource
    IWrongRecordService wrongRecordService;
    @Resource
    IKpsService kpsService;
    @Resource
    IModuleService moduleService;
    @Resource
    IQuestionTypeService questionTypeService;
    @Resource
    IQuestionService questionService;
    @Resource
    IOptionService optionService;

    @Override
    @Transactional(rollbackFor = Exception.class)
    public PracticeResultResp submitPractice(SubmitPracticeParam param) throws CommonException {
        Integer practiceInfoId = param.getPracticeInfoId();
        LoginRespVO loginRespVO = SecurityUtils.getUser();
        if (loginRespVO == null){
            throw CommonException.exception_400("账号未登录");
        }
        Integer studentId = loginRespVO.getTeacherOrStudentId();

        // 拿出用户 练习题 内的所有题
        List<PracticeDetailBean> list = practiceDetailService
                .list(new QueryWrapper<PracticeDetailBean>().lambda().eq(PracticeDetailBean::getPracticeInfoId, practiceInfoId));
        List<Integer> practiceDetailIds = list.stream().map(PracticeDetailBean::getPracticeDetailId).collect(Collectors.toList());


        // 拿出用户 练习题 答复情况
        List<AnswerRecordBean> answerRecordBeans = answerRecordService.list(new QueryWrapper<AnswerRecordBean>().lambda()
                .eq(AnswerRecordBean::getStudentId, studentId).in(AnswerRecordBean::getPracticeDetailId, practiceDetailIds));

        PracticeResultResp resp = new PracticeResultResp();

        int total = answerRecordBeans.size();
        long correntTotal = answerRecordBeans.stream().filter(o -> ObjectUtil.isNotNull(o.getCorrect()) && o.getCorrect()).count();
        resp.setPracticeInfoId(practiceInfoId);
        resp.setTotal(total);
        resp.setCorrectTotal(correntTotal);
        // 正确率
        BigDecimal accuracy = new BigDecimal(0);
        if (total != 0){
            BigDecimal correntBigDecimal = new BigDecimal(correntTotal);
            BigDecimal totalDecimal = new BigDecimal(total);
            accuracy = correntBigDecimal.divide(totalDecimal,2, RoundingMode.HALF_UP);
        }

        resp.setAccuracy(accuracy);

        // 修改
        PracticeInfoBean practiceInfoBean = new PracticeInfoBean();
        practiceInfoBean.setPracticeInfoId(practiceInfoId);
        practiceInfoBean.setAccuracy(accuracy);
        practiceInfoBean.setUpdateTime(System.currentTimeMillis());

        this.updateById(practiceInfoBean);
        return resp;
    }

    @Override
    public DataWithNum<List<ReviewOfIncorrectQuestionsResp>> reviewOfIncorrectQuestions(ReviewOfIncorrectQuestionsParam param) {
        Integer moduleId = param.getModuleId();
        Integer kpsId = param.getKpsId();
        Integer questionTypeId = param.getQuestionTypeId();


        List<WrongRecordBean> wrongRecordBeans = wrongRecordService.list(new QueryWrapper<WrongRecordBean>().lambda()
                .eq(WrongRecordBean::getModuleId, moduleId).eq(WrongRecordBean::getKpsId, kpsId).eq(WrongRecordBean::getQuestionTypeId, questionTypeId)
                .orderByDesc(WrongRecordBean::getWrongTime));
        if (CollectionUtil.isEmpty(wrongRecordBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        // 查询错题
        Set<Integer> questionIds = wrongRecordBeans.stream().map(WrongRecordBean::getQuestionId).collect(Collectors.toSet());
        List<QuestionBean> questionBeans = questionService.list(new QueryWrapper<QuestionBean>().lambda().in(QuestionBean::getQuestionId, questionIds));
        if (CollectionUtil.isEmpty(questionBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        Map<Integer, QuestionBean> questionBeanMap = questionBeans.stream().collect(Collectors.toMap(QuestionBean::getQuestionId, sig -> sig));
        // 查询选项信息
        List<OptionBean> optionBeans;
        if (ObjectUtil.equal(questionTypeId, 1) || ObjectUtil.equal(questionTypeId, 2)){
            if (CollectionUtil.isNotEmpty(questionIds)){
                optionBeans = optionService.list(new QueryWrapper<OptionBean>().lambda().in(OptionBean::getQuestionId, questionIds));
            } else {
                optionBeans = null;
            }
        } else {
            optionBeans = null;
        }


        List<ReviewOfIncorrectQuestionsResp> datas = wrongRecordBeans.stream().map(item -> {
            ReviewOfIncorrectQuestionsResp tmp = new ReviewOfIncorrectQuestionsResp();

            Integer questionId = item.getQuestionId();

            QuestionBean questionBean = questionBeanMap.get(questionId);
            if (questionBean == null){
                return null;
            }
            tmp.setQuestionId(questionId);
            tmp.setQuestion(questionBean.getQuestion());
            tmp.setQuestionKey(questionBean.getQuestionKey());
            tmp.setAnalysis(questionBean.getAnalysis());
            tmp.setWrongTime(item.getWrongTime());

            // 选择题、判断题 ，必须要有选项
            if (ObjectUtil.notEqual(questionTypeId, 1) && ObjectUtil.notEqual(questionTypeId, 2)){
                return tmp;
            }

            // 没有 选项 直接跳过，题目 录入时 存在异常
            if (CollectionUtil.isEmpty(optionBeans)){
                return null;
            }
            List<PracticeResp.OptionInfo> optionInfoList = optionBeans.stream().filter(sig -> sig.getQuestionId().equals(questionBean.getQuestionId()))
                    .sorted(Comparator.comparing(OptionBean::getOptionNumber))
                    .map(sig -> {
                        PracticeResp.OptionInfo optionInfo = new PracticeResp.OptionInfo();
                        optionInfo.setOptionNumber(sig.getOptionNumber());
                        optionInfo.setContent(sig.getContent());
                        return optionInfo;
                    })
                    .collect(Collectors.toList());

            tmp.setOptionInfos(optionInfoList);

            return tmp;
        }).filter(Objects::nonNull).collect(Collectors.toList());

        long total = datas.size();
        return new DataWithNum<>(datas, total);
    }

    @Override
    public DataWithNum<List<KpsClassifyInfoResp>> queryKpsClassifyInfo() {
        // 查询所有知识点
        List<KpsBean> kpsBeans = kpsService.list();


        if (CollectionUtil.isEmpty(kpsBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }

        // 查询所有模块
        Set<Integer> moduleIds = kpsBeans.stream().map(KpsBean::getModuleId).collect(Collectors.toSet());
        List<ModuleBean> moduleBeans = moduleService.list(new QueryWrapper<ModuleBean>().lambda().in(ModuleBean::getModuleId, moduleIds));
        if (CollectionUtil.isEmpty(moduleBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        long total = moduleBeans.size();

        // 查询拥有的题型（选择题、判断题 等）
        List<QuestionTypeBean> list = questionTypeService.list();
        if (CollectionUtil.isEmpty(list)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        Map<Integer, QuestionTypeBean> questionTypeBeanMap = list.stream().collect(Collectors.toMap(QuestionTypeBean::getQuestionTypeId, sig -> sig));
        Set<Integer> kpsIds = kpsBeans.stream().map(KpsBean::getKpsId).collect(Collectors.toSet());
        // 查询 每个知识点下有哪些题型
        List<QuestionBean> list1 = questionService.list(new QueryWrapper<QuestionBean>().lambda().in(QuestionBean::getKpsId, kpsIds)
                .select(QuestionBean::getQuestionTypeId, QuestionBean::getKpsId)
                .last("GROUP BY kps_id,question_type_id"));
        Map<Integer, List<QuestionTypeBean>> kpsQuestionTypeMaps = new HashMap<>();
        for (QuestionBean questionBean : list1) {
            Integer kpsId = questionBean.getKpsId();
            Integer questionTypeId = questionBean.getQuestionTypeId();
            QuestionTypeBean questionTypeBean = questionTypeBeanMap.get(questionTypeId);
            if (questionTypeBean == null){
                continue;
            }
            List<QuestionTypeBean> orDefault = kpsQuestionTypeMaps.getOrDefault(kpsId, new ArrayList<>(2));
            orDefault.add(questionTypeBean);
            kpsQuestionTypeMaps.put(kpsId, orDefault);
        }


        List<KpsClassifyInfoResp> datas = moduleBeans.stream().map(item -> {
            Integer moduleId = item.getModuleId();
            KpsClassifyInfoResp kpsClassifyInfoResp = new KpsClassifyInfoResp();
            kpsClassifyInfoResp.setModuleId(moduleId);
            kpsClassifyInfoResp.setModuleName(item.getModuleName());

            List<PracticeClassifyResp> practiceClassifyResps = kpsBeans.stream()
                    .filter(sig -> ObjectUtil.equal(sig.getModuleId(), moduleId))
                    .map(sig -> {
                PracticeClassifyResp tmp = new PracticeClassifyResp();
                Integer kpsId = sig.getKpsId();
                tmp.setId(String.valueOf(kpsId));
                tmp.setName(sig.getKpsName());
                if (!kpsQuestionTypeMaps.containsKey(kpsId)) {
                    return null;
                }
                tmp.setQuestionTypeBeans(kpsQuestionTypeMaps.get(kpsId));
                return tmp;
            }).filter(Objects::nonNull).collect(Collectors.toList());

            kpsClassifyInfoResp.setClassifyInfos(practiceClassifyResps);
            return kpsClassifyInfoResp;
        }).collect(Collectors.toList());


        return new DataWithNum<>(datas, total);
    }

    @Override
    public DataWithNum<List<KpsClassifyInfoResp>> queryWrongQuestionClassifyInfo() {
        // 查询所有错题 所属的 模块和知识点 (不带 计算题、简单题)
        List<WrongRecordBean> wrongRecordBeans = wrongRecordService.queryWrongModuleAndKps();
        //List<AnswerRecordBean> answerRecordBeans = answerRecordService.queryWrongModuleAndKps();
        if (CollectionUtil.isEmpty(wrongRecordBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }

        // 根据模块id 分组
        Map<Integer, List<WrongRecordBean>> moduleMap = wrongRecordBeans.stream()
                .filter(sig -> ObjectUtil.isNotNull(sig.getModuleId()) && ObjectUtil.isNotNull(sig.getKpsId()) && ObjectUtil.isNotNull(sig.getQuestionTypeId()))
                .collect(Collectors.groupingBy(WrongRecordBean::getModuleId));

        Set<Integer> moduleIds = wrongRecordBeans.stream().map(WrongRecordBean::getModuleId).collect(Collectors.toSet());
        Set<Integer> kpsIds = wrongRecordBeans.stream().map(WrongRecordBean::getKpsId).collect(Collectors.toSet());
        Set<Integer> questionTypeIds = wrongRecordBeans.stream().map(WrongRecordBean::getQuestionTypeId).collect(Collectors.toSet());

        // 查询模块信息
        List<ModuleBean> moduleBeans = moduleService.list(new QueryWrapper<ModuleBean>().lambda().in(ModuleBean::getModuleId, moduleIds));
        if (CollectionUtil.isEmpty(moduleBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        Map<Integer, String> moduleMaps = moduleBeans.stream().collect(Collectors.toMap(ModuleBean::getModuleId, ModuleBean::getModuleName));

        // 查询知识点信息
        List<KpsBean> kpsBeans = kpsService.list(new QueryWrapper<KpsBean>().lambda().in(KpsBean::getKpsId, kpsIds));
        if (CollectionUtil.isEmpty(kpsBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        Map<Integer, String> kpsMaps = kpsBeans.stream().collect(Collectors.toMap(KpsBean::getKpsId, KpsBean::getKpsName));

        // 查询题型信息
        List<QuestionTypeBean> questionTypeBeans = questionTypeService.list(new QueryWrapper<QuestionTypeBean>().lambda().in(QuestionTypeBean::getQuestionTypeId, questionTypeIds));
        if (CollectionUtil.isEmpty(questionTypeBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        Map<Integer, QuestionTypeBean> questionTypeBeanMap = questionTypeBeans.stream().collect(Collectors.toMap(QuestionTypeBean::getQuestionTypeId, sig -> sig));

        // 必须全部都有数据
        if (CollectionUtil.isEmpty(moduleBeans) || CollectionUtil.isEmpty(kpsBeans) || CollectionUtil.isEmpty(questionTypeBeans)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }



        List<KpsClassifyInfoResp> datas = new ArrayList<>();
        long total = moduleMap.size();
        for (Map.Entry<Integer, List<WrongRecordBean>> entry : moduleMap.entrySet()) {
            KpsClassifyInfoResp kpsClassifyInfoResp = new KpsClassifyInfoResp();
            Integer moduleId = entry.getKey();
            kpsClassifyInfoResp.setModuleId(moduleId);
            // 所属的模块找不到了，舍弃这条数据
            if (!moduleMaps.containsKey(moduleId)){
                continue;
            }
            kpsClassifyInfoResp.setModuleName(moduleMaps.get(moduleId));

            List<WrongRecordBean> value = entry.getValue();
            // 根据 知识点 分组
            Map<Integer, List<WrongRecordBean>> kpsMap = value.stream().filter(sig -> ObjectUtil.equal(sig.getModuleId(), moduleId)).collect(Collectors.groupingBy(WrongRecordBean::getKpsId));

            List<PracticeClassifyResp> classifyInfos = new ArrayList<>(kpsMap.size());
            for (Map.Entry<Integer, List<WrongRecordBean>> kpsEntry : kpsMap.entrySet()) {
                PracticeClassifyResp kpsClass = new PracticeClassifyResp();

                Integer kpsId = kpsEntry.getKey();
                kpsClass.setId(String.valueOf(kpsId));
                // 知识点的数据找不到了，舍弃这条数据
                if (!kpsMaps.containsKey(kpsId)){
                    continue;
                }
                kpsClass.setName(kpsMaps.get(kpsId));

                List<WrongRecordBean> value1 = kpsEntry.getValue();
                List<QuestionTypeBean> questionTypeBeanList = value1.stream().filter(sig -> ObjectUtil.equal(sig.getKpsId(), kpsId)).map(WrongRecordBean::getQuestionTypeId)
                        .map(sig -> {
                            QuestionTypeBean questionTypeBean = questionTypeBeanMap.get(sig);
                            if (questionTypeBean == null){
                                return null;
                            }
                            return questionTypeBean;
                        }).filter(Objects::nonNull).collect(Collectors.toList());


                if (CollectionUtil.isEmpty(questionTypeBeanList)){
                    continue;
                }
                questionTypeBeanList = questionTypeBeanList.stream().sorted((o1, o2) -> o1.getQuestionTypeId() - o2.getQuestionTypeId()).collect(Collectors.toList());
                kpsClass.setQuestionTypeBeans(questionTypeBeanList);
                classifyInfos.add(kpsClass);
            }

            if (CollectionUtil.isEmpty(classifyInfos)){
                continue;
            }
            classifyInfos = classifyInfos.stream().sorted((o1, o2) -> Long.valueOf(o1.getId()).compareTo(Long.valueOf(o2.getId()))).collect(Collectors.toList());
            kpsClassifyInfoResp.setClassifyInfos(classifyInfos);
            datas.add(kpsClassifyInfoResp);
        }
        return new DataWithNum<>(datas, total);
    }

    @Override
    @Transactional(rollbackFor = Exception.class)
    public List<BatchSubmitPracticeResp> batchSubmitPractice(BatchSubmitPracticeParam param) throws CommonException {
        LoginRespVO loginRespVO = SecurityUtils.getUser();
        if (loginRespVO == null){
            throw CommonException.exception_400("账号未登录");
        }
        Integer studentId = loginRespVO.getTeacherOrStudentId();


        Integer practiceInfoId = param.getPracticeInfoId();

        List<BatchSubmitPracticeParam.QuestionAnswerInfo> questionAnswerInfoList = param.getQuestionAnswerInfoList();
        if (CollectionUtil.isEmpty(questionAnswerInfoList)){
            return Collections.emptyList();
        }

        // 获取 题目信息
        List<Integer> questionIds = questionAnswerInfoList.stream().map(BatchSubmitPracticeParam.QuestionAnswerInfo::getQuestionId).collect(Collectors.toList());
        List<QuestionBean> questionBeans = questionService.list(new QueryWrapper<QuestionBean>().lambda().in(QuestionBean::getQuestionId, questionIds));
        if (CollectionUtil.isEmpty(questionBeans)){
            return Collections.emptyList();
        }

        Map<Integer, QuestionBean> questionBeanMap = questionBeans.stream().collect(Collectors.toMap(QuestionBean::getQuestionId, sig -> sig));

        List<OptionBean> optionBeans = optionService.list(new QueryWrapper<OptionBean>().lambda().in(OptionBean::getQuestionId, questionIds));

        // 存储答题记录
        List<AnswerRecordBean> answerRecordBeans = new ArrayList<>();

        List<BatchSubmitPracticeResp> result = new ArrayList<>();

        List<WrongRecordBean> needUpdateOrSaveDatas = new ArrayList<>();

        for (BatchSubmitPracticeParam.QuestionAnswerInfo questionAnswerInfo : questionAnswerInfoList) {
            Integer practiceDetailId = questionAnswerInfo.getPracticeDetailId();
            Integer questionId = questionAnswerInfo.getQuestionId();
            String questionKeyByUser = questionAnswerInfo.getQuestionKeyByUser();

            QuestionBean questionBean = questionBeanMap.get(questionId);
            if (questionBean == null){
                continue;
            }

            BatchSubmitPracticeResp tmp = new BatchSubmitPracticeResp();
            tmp.setPracticeInfoId(practiceInfoId);
            tmp.setPracticeDetailId(practiceDetailId);
            tmp.setQuestionTypeId(questionBean.getQuestionTypeId());
            tmp.setQuestionId(questionBean.getQuestionId());
            tmp.setQuestion(questionBean.getQuestion());
            tmp.setQuestionKeyByUser(questionKeyByUser);
            tmp.setQuestionKey(questionBean.getQuestionKey());

            // 选项
            List<BatchSubmitPracticeResp.OptionInfo> optionInfos = optionBeans.stream().filter(o -> o.getQuestionId().equals(questionId)).map(o -> {
                BatchSubmitPracticeResp.OptionInfo optionInfo = new BatchSubmitPracticeResp.OptionInfo();
                optionInfo.setOptionNumber(o.getOptionNumber());
                optionInfo.setContent(o.getContent());
                return optionInfo;
            }).collect(Collectors.toList());

            Boolean correct = null;
            if (ObjectUtil.equal(questionBean.getQuestionTypeId(),1) || ObjectUtil.equal(questionBean.getQuestionTypeId(), 2)){
                // 直接比对内容是否相同
                correct = ObjectUtil.equal(questionBean.getQuestionKey().trim(), questionKeyByUser.trim());
            }
            tmp.setCorrect(correct);
            tmp.setOptionInfos(optionInfos);

            AnswerRecordBean answerRecordBean = new AnswerRecordBean();
            answerRecordBean.setPracticeDetailId(practiceDetailId);
            answerRecordBean.setQuestionTypeId(questionBean.getQuestionTypeId());
            answerRecordBean.setKpsId(questionBean.getKpsId());
            answerRecordBean.setModuleId(questionBean.getModuleId());
            answerRecordBean.setStudentId(studentId);
            answerRecordBean.setQuestionKeyByUser(questionKeyByUser);
            answerRecordBean.setCreateTime(System.currentTimeMillis());
            answerRecordBean.setUpdateTime(System.currentTimeMillis());
            answerRecordBean.setCorrect(correct);
            answerRecordBeans.add(answerRecordBean);
            result.add(tmp);

            // 如果答题错误，记录一条错误的数据（主观题 无需记录）
            if (Boolean.FALSE.equals(correct)){
                // 如果查询不到记录，证明是第一次做错，新增操作
                // 如果能查询到记录，证明已经做错过， 修改次数
                WrongRecordBean wrongRecordBean = wrongRecordService.getOne(new QueryWrapper<WrongRecordBean>().lambda().eq(WrongRecordBean::getStudentId, studentId).eq(WrongRecordBean::getQuestionId, questionId));
                if (wrongRecordBean == null){
                    wrongRecordBean = new WrongRecordBean();
                    wrongRecordBean.setQuestionId(questionId);
                    wrongRecordBean.setQuestionTypeId(questionBean.getQuestionTypeId());
                    wrongRecordBean.setWrongTime(1);
                    wrongRecordBean.setStudentId(studentId);
                    wrongRecordBean.setKpsId(questionBean.getKpsId());
                    wrongRecordBean.setModuleId(questionBean.getModuleId());
                    wrongRecordBean.setCreateTime(System.currentTimeMillis());
                    wrongRecordBean.setUpdateTime(System.currentTimeMillis());
                }else {
                    wrongRecordBean.setWrongTime(wrongRecordBean.getWrongTime() + 1);
                    wrongRecordBean.setUpdateTime(System.currentTimeMillis());
                }
                needUpdateOrSaveDatas.add(wrongRecordBean);
            }
        }

        if (CollectionUtil.isNotEmpty(answerRecordBeans)){
            answerRecordService.saveBatch(answerRecordBeans);
        }

        // 总提数
        int total = answerRecordBeans.size();
        // 正确的
        long correntTotal = answerRecordBeans.stream().filter(o -> ObjectUtil.isNotNull(o.getCorrect()) && o.getCorrect()).count();

        // 获取正确率
        BigDecimal accuracy;
        if (total != 0){
            BigDecimal correntBigDecimal = new BigDecimal(correntTotal);
            BigDecimal totalDecimal = new BigDecimal(total);
            accuracy = correntBigDecimal.divide(totalDecimal,2, RoundingMode.HALF_UP);
        } else {
            accuracy = new BigDecimal(0);
        }

        result.forEach(sig -> {
            sig.setAccuracy(accuracy);
            sig.setTotal(total);
            sig.setCorrectTotal(correntTotal);
        });

        // 修改
        PracticeInfoBean practiceInfoBean = new PracticeInfoBean();
        practiceInfoBean.setPracticeInfoId(practiceInfoId);
        practiceInfoBean.setAccuracy(accuracy);
        practiceInfoBean.setUpdateTime(System.currentTimeMillis());

        this.updateById(practiceInfoBean);

        if (CollectionUtil.isNotEmpty(needUpdateOrSaveDatas)){
            wrongRecordService.saveOrUpdateBatch(needUpdateOrSaveDatas);
        }

        return result;
    }

}
