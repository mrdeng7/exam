package com.exam.support.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.collection.ConcurrentHashSet;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.exam.config.exception.CommonException;
import com.exam.config.satoken.SecurityUtils;
import com.exam.dto.GenerateQuestionsParam;
import com.exam.dto.QueryClassifyInfoParam;
import com.exam.entity.DataWithNum;
import com.exam.entity.ErrorRateEntity;
import com.exam.entity.FrequencyEntity;
import com.exam.po.AnswerRecordBean;
import com.exam.po.QuestionBean;
import com.exam.po.QuestionTypeBean;
import com.exam.service.*;
import com.exam.support.AbstractQuestionsSupport;
import com.exam.util.SamplingUtil;
import com.exam.vo.LoginRespVO;
import com.exam.vo.PracticeClassifyResp;
import com.exam.vo.PracticeResp;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.*;
import java.util.stream.Collectors;

/**
 * @author jone
 * @Description 系统推荐练习
 * 基于内容的推荐算法先按学生做题知识点的错误率进行相关知识点的推送，如果相关知识点题量不够，再按该知识点所属的章节的题进行推送
 * 这个推荐算法是针对学生练习题库时的练习错误率，然后选按系统推送做题的时候就推送他错误率高的或者做的频率低的相关知识点的各个题型给他做
 * @Date 2024/03/31/11:04
 * @Version 1.0
 */
@Service("systemRecommendedService")
@Slf4j
public class SystemRecommendedServiceImpl extends AbstractQuestionsSupport {
    @Resource
    IQuestionTypeService questionTypeService;
    @Resource
    IWrongRecordService wrongRecordService;
    @Resource
    IAnswerRecordService answerRecordService;
    @Resource
    IQuestionService questionService;
    @Resource
    IKpsService kpsService;
    @Autowired
    @Qualifier("taskExecutor")
    public ThreadPoolTaskExecutor taskExecutor;


    @Override
    protected Integer generateQuestionsType() {
        return 3;
    }

    @Override
    public DataWithNum<List<PracticeClassifyResp>> queryClassifyInfo(QueryClassifyInfoParam param) {
        // 查询拥有的非主观题的题型（选择题、判断题 等）
        List<QuestionTypeBean> list = questionTypeService.list();
        if (CollectionUtil.isEmpty(list)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }

        PracticeClassifyResp tmp = new PracticeClassifyResp();
        tmp.setId("5");
        tmp.setName("系统推荐练习");
        tmp.setQuestionTypeBeans(list);


        return new DataWithNum<>(Collections.singletonList(tmp), 1L);
    }

    @Override
    public List<PracticeResp> generateQuestions(GenerateQuestionsParam param) throws CommonException {
        // 从session中获取学生的id
        LoginRespVO loginRespVO = SecurityUtils.getUser();
        if (loginRespVO == null){
            throw CommonException.exception_400("账号未登录");
        }
        Integer studentId = loginRespVO.getTeacherOrStudentId();
        // 随机生成题库
        Integer topN = 10;
        // 获取题目信息
        Integer questionTypeId = param.getQuestionTypeId();
        if (questionTypeId != 1 && questionTypeId !=2){
            topN = 5;
        }
        // 统计答题记录中  知识点的 错误率
        List<ErrorRateEntity> errorRateEntities = questionService.queryKpsErrorRate(questionTypeId, studentId, 20);

        //1、 如果数据为空， 随机推荐（未做过任何题目）
        if (CollectionUtil.isEmpty(errorRateEntities)){
            List<QuestionBean> finalQuestionBeans = questionService.randomQueryQuestionInfo(questionTypeId, null, null, topN);
            return this.saveAndGeneratePracticeInfo(finalQuestionBeans, "系统推荐练习", questionTypeId);
        }

        //2、根据 知识点 查询题目（错误率较高）
        List<Integer> errorRateKpsIds = errorRateEntities.stream().map(ErrorRateEntity::getKpsId).collect(Collectors.toList());
        List<QuestionBean> errorQuestionBeans = questionService.batchRandomQueryQuestionInfo(questionTypeId, null, errorRateKpsIds, topN);

        //3、获取没做过的 知识点 题目
        List<QuestionBean> noPracticeQuestionBeans = new ArrayList<>();
        List<Integer> noPracticeKpsIds = kpsService.queryNoPracticeKpsId(studentId);
        if (CollectionUtil.isNotEmpty(noPracticeKpsIds)){
            noPracticeQuestionBeans = questionService.batchRandomQueryQuestionInfo(questionTypeId, null, noPracticeKpsIds, topN);
        }
        //4、获取练习题中频率低的知识点
        List<QuestionBean> lowFrequencyQuestionBeans = new ArrayList<>();
        List<FrequencyEntity> frequencyEntities = answerRecordService.lowFrequency(studentId, 4);
        if (CollectionUtil.isNotEmpty(frequencyEntities)){
            List<Integer> kpsIds = frequencyEntities.stream().map(FrequencyEntity::getKpsId).collect(Collectors.toList());
            lowFrequencyQuestionBeans = questionService.batchRandomQueryQuestionInfo(questionTypeId, null, kpsIds, 5);
        }




        // 去重(优先保留 高频错题 > 未做过的知识点 > 做过的低频知识点)
        Set<Integer> filterQuestionIds = new HashSet<>();
        List<List<QuestionBean>> allQuestions = new ArrayList<>(4);
        // 高频错题 知识点
        if (CollectionUtil.isNotEmpty(errorQuestionBeans)){
            allQuestions.add(errorQuestionBeans);
            filterQuestionIds = errorQuestionBeans.stream().map(QuestionBean::getQuestionId).collect(Collectors.toSet());
        }
        // 未做过的知识点
        if (CollectionUtil.isNotEmpty(noPracticeQuestionBeans)){
            Set<Integer> finalFilterQuestionIds1 = filterQuestionIds;
            noPracticeQuestionBeans = noPracticeQuestionBeans.stream().filter(sig -> !finalFilterQuestionIds1.contains(sig.getQuestionId())).collect(Collectors.toList());
            if (CollectionUtil.isNotEmpty(noPracticeQuestionBeans)){
                allQuestions.add(noPracticeQuestionBeans);
                for (QuestionBean questionBean : noPracticeQuestionBeans) {
                    Integer questionId = questionBean.getQuestionId();
                    filterQuestionIds.add(questionId);
                }
            }

        }
        // 答题记录中 低频知识点
        if (CollectionUtil.isNotEmpty(lowFrequencyQuestionBeans)){
            Set<Integer> finalFilterQuestionIds = filterQuestionIds;
            lowFrequencyQuestionBeans = lowFrequencyQuestionBeans.stream().filter(sig -> !finalFilterQuestionIds.contains(sig.getQuestionId())).collect(Collectors.toList());
            if (CollectionUtil.isNotEmpty(lowFrequencyQuestionBeans)){
                allQuestions.add(lowFrequencyQuestionBeans);
            }
        }



        // 再次随机取样（分层随机取样）
        List<QuestionBean> finalQuestions = SamplingUtil.stratifiedSample(allQuestions, topN);
        return this.saveAndGeneratePracticeInfo(finalQuestions, "系统推荐练习", questionTypeId);
    }
}
