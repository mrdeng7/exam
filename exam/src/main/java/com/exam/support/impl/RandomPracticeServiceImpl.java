package com.exam.support.impl;

import cn.hutool.core.collection.CollectionUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.exam.dto.GenerateQuestionsParam;
import com.exam.dto.QueryClassifyInfoParam;
import com.exam.entity.DataWithNum;
import com.exam.po.ModuleBean;
import com.exam.po.QuestionBean;
import com.exam.po.QuestionTypeBean;
import com.exam.service.IModuleService;
import com.exam.service.IQuestionService;
import com.exam.service.IQuestionTypeService;
import com.exam.service.impl.ModuleServiceImpl;
import com.exam.support.AbstractQuestionsSupport;
import com.exam.util.SamplingUtil;
import com.exam.vo.PracticeClassifyResp;
import com.exam.vo.PracticeResp;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 * @author jone
 * @Description 随机练习
 * @Date 2024/03/31/11:04
 * @Version 1.0
 */
@Service("randomPracticeService")
@Slf4j
public class RandomPracticeServiceImpl extends AbstractQuestionsSupport {
    @Resource
    IQuestionTypeService questionTypeService;

    @Resource
    IQuestionService questionService;
    @Resource
    IModuleService moduleService;


    @Override
    protected Integer generateQuestionsType() {
        return 5;
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
        tmp.setName("随机练习");
        tmp.setQuestionTypeBeans(list);


        return new DataWithNum<>(Collections.singletonList(tmp), 1L);
    }

    @Override
    public List<PracticeResp> generateQuestions(GenerateQuestionsParam param) {
        // 随机生成题库
        int topN = 10;
        // 获取题目信息
        Integer questionTypeId = param.getQuestionTypeId();
        if (questionTypeId != 1 && questionTypeId !=2){
            topN = 5;
        }
        // 查询出所有模块
        List<ModuleBean> list = moduleService.list();
        List<Integer> moduleIds = list.stream().map(ModuleBean::getModuleId).collect(Collectors.toList());
        // 随机取样
        List<QuestionBean> questionBeans = questionService.randomQueryQuestionInfoByModuleIds(questionTypeId, moduleIds,  5);
        if (CollectionUtil.isEmpty(questionBeans)){
            return Collections.emptyList();
        }
        Map<Integer, QuestionBean> questionBeanMap = questionBeans.stream().collect(Collectors.toMap(QuestionBean::getQuestionId, sig -> sig));
        // 蓄水池取样
        int[] questionIds = questionBeanMap.keySet().stream().mapToInt(Integer::intValue).toArray();


        int[] finalQuestionIds = SamplingUtil.reservoirSample(questionIds, topN);

        List<QuestionBean> finalDatas = new ArrayList<>();
        for (int finalQuestionId : finalQuestionIds) {
            QuestionBean questionBean = questionBeanMap.get(finalQuestionId);
            if (questionBean != null){
                finalDatas.add(questionBean);
            }
        }

        return this.saveAndGeneratePracticeInfo(finalDatas, "随机练习", questionTypeId);
    }
}
