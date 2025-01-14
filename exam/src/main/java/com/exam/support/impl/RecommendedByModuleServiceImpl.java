package com.exam.support.impl;

import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.date.DateUnit;
import cn.hutool.core.date.DateUtil;
import cn.hutool.core.date.LocalDateTimeUtil;
import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.exam.dto.GenerateQuestionsParam;
import com.exam.dto.QueryClassifyInfoParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataWithNum;
import com.exam.po.*;
import com.exam.service.*;
import com.exam.support.AbstractQuestionsSupport;
import com.exam.util.IntToSmallChineseNumber;
import com.exam.vo.PracticeClassifyResp;
import com.exam.vo.PracticeResp;
import com.sun.xml.bind.v2.TODO;
import io.swagger.models.auth.In;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;

/**
 * @author jone
 * @Description 按模块推荐的策略
 * @Date 2024/03/26/19:31
 * @Version 1.0
 */
@Service("recommendedByModuleService")
@Slf4j
public class RecommendedByModuleServiceImpl extends AbstractQuestionsSupport {
    @Resource
    IQuestionTypeService questionTypeService;
    @Resource
    IQuestionService questionService;
    @Resource
    IModuleService moduleService;
    @Resource
    IOptionService optionService;
    @Resource
    IPracticeInfoService practiceInfoService;
    @Resource
    IPracticeDetailService practiceDetailService;

    @Override
    protected Integer generateQuestionsType() {
        return 1;
    }

    @Override
    public DataWithNum<List<PracticeClassifyResp>> queryClassifyInfo(QueryClassifyInfoParam param) {
        // 分页获取 模块信息
        Integer pageIndex = param.getPageIndex();
        Integer pageSize = param.getPageSize();

        List<ModuleBean> records = new ArrayList<>();
        long total = 0L;
        // 查询所有
        if (pageSize == -1){
            records = moduleService.list();
            total = records.size();
        }else {
            Page<ModuleBean> page = new Page<>(pageIndex, pageSize);

            Page<ModuleBean> page1 = moduleService.page(page);
            records = page1.getRecords();
            total = page1.getTotal();
        }

        if (CollectionUtil.isEmpty(records)){
            return new DataWithNum<>(Collections.emptyList(), total);
        }

        // 查询拥有的非主观题的题型（选择题、判断题 等）
        List<QuestionTypeBean> list =
                questionTypeService.list();
        if (CollectionUtil.isEmpty(list)){
            return new DataWithNum<>(Collections.emptyList(), total);
        }

        Map<Integer, QuestionTypeBean> questionTypeBeanMap = list.stream().collect(Collectors.toMap(QuestionTypeBean::getQuestionTypeId, sig -> sig));
        Set<Integer> moduleIds = records.stream().map(ModuleBean::getModuleId).collect(Collectors.toSet());

        // 查询 每个知识点下有哪些题型
        List<QuestionBean> list1 = questionService.list(new QueryWrapper<QuestionBean>().lambda().in(QuestionBean::getModuleId, moduleIds)
                .select(QuestionBean::getQuestionTypeId, QuestionBean::getModuleId)
                .last("GROUP BY module_id,question_type_id"));
        Map<Integer, List<QuestionTypeBean>> moduleQuestionTypeMaps = new HashMap<>();
        for (QuestionBean questionBean : list1) {
            Integer moduleId = questionBean.getModuleId();
            Integer questionTypeId = questionBean.getQuestionTypeId();
            QuestionTypeBean questionTypeBean = questionTypeBeanMap.get(questionTypeId);
            if (questionTypeBean == null){
                continue;
            }
            List<QuestionTypeBean> orDefault = moduleQuestionTypeMaps.getOrDefault(moduleId, new ArrayList<>(2));
            orDefault.add(questionTypeBean);
            moduleQuestionTypeMaps.put(moduleId, orDefault);
        }


        List<PracticeClassifyResp> datas = records.stream().map(sig -> {
            PracticeClassifyResp tmp = new PracticeClassifyResp();
            Integer moduleId = sig.getModuleId();
            tmp.setId(String.valueOf(moduleId));
            tmp.setName(sig.getModuleName());
            if (!moduleQuestionTypeMaps.containsKey(moduleId)){
                return null;
            }
            tmp.setQuestionTypeBeans(moduleQuestionTypeMaps.get(moduleId));
            return tmp;
        }).filter(Objects::nonNull).collect(Collectors.toList());

        return new DataWithNum<>(datas, total);
    }


    @Override
    @Transactional(rollbackFor = Exception.class)
    public List<PracticeResp> generateQuestions(GenerateQuestionsParam param) {
        // 按模块推荐策略，学生需要选择一个 模块题型id
        Integer moduleId = param.getModuleOrKpsId();
        if (ObjectUtil.isNull(moduleId)){
            return null;
        }
        Integer topN = 10;
        // 获取题目信息
        Integer questionTypeId = param.getQuestionTypeId();
        if (questionTypeId != 1 && questionTypeId !=2){
            topN = 5;
        }
        List<QuestionBean> questionBeans = questionService.randomQueryQuestionInfo(questionTypeId, moduleId, null, topN);
        if (CollectionUtil.isEmpty(questionBeans)){
            return Collections.emptyList();
        }
        return this.saveAndGeneratePracticeInfo(questionBeans, "按模块推荐练习题", questionTypeId);
    }


}
