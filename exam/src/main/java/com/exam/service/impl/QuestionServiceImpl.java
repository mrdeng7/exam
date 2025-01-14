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
import com.exam.entity.CodeConstant;
import com.exam.entity.DataWithNum;
import com.exam.entity.ErrorRateEntity;
import com.exam.po.*;
import com.exam.dao.QuestionDao;
import com.exam.service.*;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.vo.AnalysisAndJudgmentResp;
import com.exam.vo.LoginRespVO;
import com.exam.vo.PracticeResultResp;
import com.exam.vo.QuestionResp;
import io.swagger.models.auth.In;
import org.aspectj.weaver.ast.Var;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.stream.Collectors;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
@Service
public class QuestionServiceImpl extends ServiceImpl<QuestionDao, QuestionBean> implements IQuestionService {

    @Resource
    IQuestionTypeService questionTypeService;

    @Resource
    IAnswerRecordService answerRecordService;

    @Resource
    IWrongRecordService wrongRecordService;

    @Resource
    IPracticeInfoService practiceInfoService;
    @Resource
    IKpsService kpsService;
    @Resource
    IModuleService moduleService;

    @Resource
    IOptionService optionService;

    /**
     * 简单随机取样
     * 大规模数据表中这种方法可能会很慢，因为它对整个表进行排序。对于较大的数据库，可以用采样策略。
     * // 获取最小和最大的ID
     * int minId = getMinIdFromTable();
     * int maxId = getMaxIdFromTable();
     *
     * Random random = new Random();
     *
     * // 获取10个随机ID
     * List<Integer> ids = new ArrayList<>();
     * for (int i = 0; i < 10; i++) {
     *     int id = random.nextInt(maxId - minId + 1) + minId;
     *     ids.add(id);
     * }
     *
     * // 使用IN语句获取这些ID对应的记录
     *  生成更多的随机 ID
     *  反复查询直到获取足够的数据
     * @param questionTypeId
     * @param moduleId
     * @param kpsId
     * @param topN
     * @return
     */
    @Override
    public List<QuestionBean> randomQueryQuestionInfo(Integer questionTypeId, Integer moduleId, Integer kpsId, Integer topN) {
        if (ObjectUtil.isNull(questionTypeId)){
            return Collections.emptyList();
        }
        // 默认设置 topN 为10
        if (topN == null){
            topN = 10;
        }
        //大规模数据表中这种方法可能会很慢，因为它对整个表进行排序
        return baseMapper.randomQueryQuestionInfo(questionTypeId, moduleId, kpsId, topN);
    }

    @Override
    public List<QuestionBean> randomQueryQuestionInfoByModuleIds(Integer questionTypeId, List<Integer> moduleIds, Integer topN) {
        if (ObjectUtil.isNull(questionTypeId) || CollectionUtil.isEmpty(moduleIds)){
            return Collections.emptyList();
        }
        return baseMapper.randomQueryQuestionInfoByModuleIds(questionTypeId, moduleIds, topN);
    }

    @Override
    public List<QuestionBean> batchRandomQueryQuestionInfo(Integer questionTypeId, List<Integer> moduleIds, List<Integer> kpsIds,Integer topN) {
        if (ObjectUtil.isNull(questionTypeId) && CollectionUtil.isEmpty(moduleIds) && CollectionUtil.isEmpty(kpsIds)){
            return Collections.emptyList();
        }
        // 默认设置 topN 为10
        if (topN == null){
            topN = 10;
        }
        //大规模数据表中这种方法可能会很慢，因为它对整个表进行排序
        return baseMapper.batchRandomQueryQuestionInfo(questionTypeId, moduleIds, kpsIds, topN);
    }

    @Override
    public AnalysisAndJudgmentResp analysisAndJudgment(AnalysisAndJudgmentParam param) throws CommonException {
        // 如果没有传递，从session中获取
        LoginRespVO loginRespVO = SecurityUtils.getUser();
        if (loginRespVO == null){
            throw CommonException.exception_400("账号未登录");
        }
        Integer studentId = loginRespVO.getTeacherOrStudentId();

        Integer questionId = param.getQuestionId();
        // 学生 回答的答案
        String questionKeyByUser = param.getQuestionKeyByUser();
        // 为null时，设一个空字符串，防止校验时出现空指针
        if (StrUtil.isBlank(questionKeyByUser)){
            questionKeyByUser = "";
        }

        // 读取真实的答案
        QuestionBean one = this.getOne(new QueryWrapper<QuestionBean>().lambda().eq(QuestionBean::getQuestionId, questionId));
        // 题目不存在了
        if (one == null){
            throw CommonException.exception_510(CodeConstant.QUESTION_NOT_EXIST);
        }

        AnalysisAndJudgmentResp analysisAndJudgmentResp = new AnalysisAndJudgmentResp();
        analysisAndJudgmentResp.setAnalysis(one.getAnalysis());
        analysisAndJudgmentResp.setQuestionKey(one.getQuestionKey());
        analysisAndJudgmentResp.setDifficulty(one.getDifficulty());
        analysisAndJudgmentResp.setScore(one.getScore());

        Boolean correct = false;
        // 正确答案
        String questionKey = one.getQuestionKey();


        Integer questionTypeId = one.getQuestionTypeId();
        // 判断 题型 是否属于主观题
        QuestionTypeBean questionTypeBean = questionTypeService.getOne(new QueryWrapper<QuestionTypeBean>().lambda().eq(QuestionTypeBean::getQuestionTypeId, questionTypeId));
        Boolean subjectWhether = questionTypeBean.getSubjectWhether();
        // 是主观题
        if (subjectWhether){
            // 可暂时采取 相似度 比对的方式（正确率不是很高）
            correct = null;

        }else {
            // 直接比对内容是否相同
            correct = ObjectUtil.equal(questionKey.trim(), questionKeyByUser.trim());
        }

        analysisAndJudgmentResp.setCorrect(correct);


        // 存储一条答题记录
        AnswerRecordBean answerRecordBean = new AnswerRecordBean();
        answerRecordBean.setPracticeDetailId(param.getPracticeDetailId());
        answerRecordBean.setQuestionTypeId(questionTypeId);
        answerRecordBean.setKpsId(one.getKpsId());
        answerRecordBean.setModuleId(one.getModuleId());
        answerRecordBean.setStudentId(studentId);
        answerRecordBean.setQuestionKeyByUser(questionKeyByUser);
        answerRecordBean.setCreateTime(System.currentTimeMillis());
        answerRecordBean.setUpdateTime(System.currentTimeMillis());
        answerRecordBean.setCorrect(correct);
        answerRecordService.save(answerRecordBean);

        // 如果答题错误，记录一条错误的数据（主观题 无需记录）
        if (Boolean.FALSE.equals(correct)){
            // 如果查询不到记录，证明是第一次做错，新增操作
            // 如果能查询到记录，证明已经做错过， 修改次数
            WrongRecordBean wrongRecordBean = wrongRecordService.getOne(new QueryWrapper<WrongRecordBean>().lambda().eq(WrongRecordBean::getStudentId, studentId).eq(WrongRecordBean::getQuestionId, questionId));
            if (wrongRecordBean == null){
                wrongRecordBean = new WrongRecordBean();
                wrongRecordBean.setQuestionId(questionId);
                wrongRecordBean.setQuestionTypeId(questionTypeId);
                wrongRecordBean.setWrongTime(1);
                wrongRecordBean.setStudentId(studentId);
                wrongRecordBean.setKpsId(one.getKpsId());
                wrongRecordBean.setModuleId(one.getModuleId());
                wrongRecordBean.setCreateTime(System.currentTimeMillis());
                wrongRecordBean.setUpdateTime(System.currentTimeMillis());
            }else {
                wrongRecordBean.setWrongTime(wrongRecordBean.getWrongTime() + 1);
                wrongRecordBean.setUpdateTime(System.currentTimeMillis());
            }
            wrongRecordService.saveOrUpdate(wrongRecordBean);
        }

        return analysisAndJudgmentResp;
    }

    @Override
    public List<ErrorRateEntity> queryKpsErrorRate(Integer questionTypeId, Integer studentId, Integer topN) {
        // 默认设置 topN 为10
        if (topN == null){
            topN = 10;
        }
        return answerRecordService.queryKpsErrorRate(questionTypeId, studentId, topN);
    }



    @Override
    public DataWithNum<List<QuestionResp>> queryQuestions(QueryQuestionParam param) {
        Integer questionTypeId = param.getQuestionTypeId();
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();
        Page<QuestionBean> page = new Page<>(pageIndex, pageSize);
        Page<QuestionBean> page1 = this.page(page, new QueryWrapper<QuestionBean>().lambda()
                .eq(ObjectUtil.isNotNull(questionTypeId), QuestionBean::getQuestionTypeId, questionTypeId)
                .orderByDesc(QuestionBean::getQuestionId));

        long total = page1.getTotal();

        List<QuestionBean> records = page1.getRecords();
        if (CollectionUtil.isEmpty(records)){
            return new DataWithNum<>(Collections.emptyList(), total);
        }
        // 查询出知识点信息
        Set<Integer> kpsIds = records.stream().map(QuestionBean::getKpsId).collect(Collectors.toSet());
        List<KpsBean> list = kpsService.list(new QueryWrapper<KpsBean>().lambda().in(KpsBean::getKpsId, kpsIds));
        Map<Integer, String> kpsMaps = null;
        if (CollectionUtil.isNotEmpty(list)){
            kpsMaps = list.stream().collect(Collectors.toMap(KpsBean::getKpsId, KpsBean::getKpsName));
        }

        // 查询出所属的章节模块
        Set<Integer> moduleIds = records.stream().map(QuestionBean::getModuleId).collect(Collectors.toSet());
        List<ModuleBean> moduleBeans = moduleService.list(new QueryWrapper<ModuleBean>().lambda().in(ModuleBean::getModuleId, moduleIds));
        Map<Integer, String> moduleMaps;
        if (CollectionUtil.isNotEmpty(moduleBeans)){
            moduleMaps = moduleBeans.stream().collect(Collectors.toMap(ModuleBean::getModuleId, ModuleBean::getModuleName));
        } else {
            moduleMaps = null;
        }

        Map<Integer, String> finalKpsMaps = kpsMaps;
        List<QuestionResp> datas = records.stream().map(sig ->{
            QuestionResp tmp = new QuestionResp();
            BeanUtil.copyProperties(sig, tmp);
            if (CollectionUtil.isNotEmpty(finalKpsMaps) && finalKpsMaps.containsKey(sig.getKpsId())){
                tmp.setKpsName(finalKpsMaps.get(sig.getKpsId()));
            }
            if (CollectionUtil.isNotEmpty(moduleMaps) && moduleMaps.containsKey(sig.getModuleId())){
                tmp.setModuleName(moduleMaps.get(sig.getModuleId()));
            }
            return tmp;
        }).collect(Collectors.toList());

        return new DataWithNum<>(datas, total);
    }

    @Override
    public Boolean updateQuestions(UpdateQuestionParam param) {
        QuestionBean questionBean = new QuestionBean();
        BeanUtil.copyProperties(param, questionBean);
        questionBean.setUpdateTime(System.currentTimeMillis());
        return this.updateById(questionBean);
    }

    @Override
    public Boolean delQuestions(UpdateQuestionParam param) {
        Integer questionId = param.getQuestionId();
        return this.removeById(questionId);
    }

    @Override
    public Boolean addQuestions(AddQuestionParam param) {
        Integer questionTypeId = param.getQuestionTypeId();
        List<OptionBean> optionBeans = param.getOptionBeans();
        // 选择、判断题  必须 存在 选项
        if (ObjectUtil.equal(questionTypeId, 1) || ObjectUtil.equal(questionTypeId, 2)){
            if (CollectionUtil.isEmpty(optionBeans)){
                return false;
            }
        }
        QuestionBean questionBean = new QuestionBean();
        BeanUtil.copyProperties(param, questionBean);
        questionBean.setUpdateTime(System.currentTimeMillis());
        questionBean.setCreateTime(System.currentTimeMillis());
        boolean save = this.save(questionBean);
        if (!save){
            return false;
        }
        // 存储选项信息
        if (CollectionUtil.isNotEmpty(optionBeans)){
            optionBeans.forEach(sig -> sig.setQuestionId(questionBean.getQuestionId()));
            optionService.saveBatch(optionBeans);
        }
        return true;
    }
}
