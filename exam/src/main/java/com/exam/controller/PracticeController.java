package com.exam.controller;

import cn.hutool.core.collection.CollectionUtil;
import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.IModuleService;
import com.exam.service.IPracticeDetailService;
import com.exam.service.IPracticeInfoService;
import com.exam.service.IQuestionService;
import com.exam.support.AbstractQuestionsSupport;
import com.exam.support.QuestionsSupportContext;
import com.exam.vo.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.xml.crypto.Data;
import java.util.List;

/**
 * @className: TeacherController
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 17:07
 */
@RestController
@RequestMapping(value = "practice", method = RequestMethod.POST)
@Validated
@Api(value = "练习题通用接口", tags = "练习题通用接口")
public class PracticeController {

    @Resource
    QuestionsSupportContext questionsSupportContext;

    @Resource
    IQuestionService questionService;

    @Resource
    IPracticeInfoService practiceInfoService;

    @ApiOperation(value = "分页获取左侧分类信息", notes = "获取左侧分类信息")
    @RequestMapping(value = "queryClassifyInfo")
    public DataPackage<List<PracticeClassifyResp>> queryClassifyInfo(@RequestBody QueryClassifyInfoParam param){
        // 使用 ”抽象类“
        AbstractQuestionsSupport questionsSupportById = questionsSupportContext.getQuestionsSupportById(param.getType());
        if (questionsSupportById == null){
            return new DataPackage<>(CodeConstant.FAILED, CodeConstant.REQUEST_SUCCESS, null);
        }
        DataWithNum<List<PracticeClassifyResp>> dataWithNum = questionsSupportById.queryClassifyInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,dataWithNum.getData(), dataWithNum.getTotal());
    }

    @ApiOperation(value = "分页获取左侧分类信息 - 知识点推荐", notes = "获取左侧分类信息 - 知识点推荐")
    @RequestMapping(value = "queryKpsClassifyInfo")
    public DataPackage<List<KpsClassifyInfoResp>> queryKpsClassifyInfo(){
        DataWithNum<List<KpsClassifyInfoResp>> dataWithNum = practiceInfoService.queryKpsClassifyInfo();
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,dataWithNum.getData(), dataWithNum.getTotal());
    }

    @ApiOperation(value = "生成练习题", notes = "生成练习题")
    @RequestMapping(value = "generateQuestions")
    public DataPackage<List<PracticeResp>> generateQuestions(@RequestBody GenerateQuestionsParam param) throws CommonException {
        // 使用 ”抽象类“
        AbstractQuestionsSupport questionsSupportById = questionsSupportContext.getQuestionsSupportById(param.getType());
        if (questionsSupportById == null){
            return new DataPackage<>(CodeConstant.FAILED, CodeConstant.REQUEST_SUCCESS, null);
        }
        List<PracticeResp> practiceResp = questionsSupportById.generateQuestions(param);
        if (CollectionUtil.isEmpty(practiceResp)){
            return new DataPackage<>(CodeConstant.SUCCESS, "暂无数据", null);
        }
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,practiceResp);
    }

    @ApiOperation(value = "判断题目的正确性", notes = "判断题目的正确性")
    @RequestMapping(value = "analysisAndJudgment")
    public DataPackage<AnalysisAndJudgmentResp> analysisAndJudgment(@RequestBody AnalysisAndJudgmentParam param) throws CommonException {
        AnalysisAndJudgmentResp resp = questionService.analysisAndJudgment(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,resp);
    }


    @ApiOperation(value = "提交练习题", notes = "提交练习题")
    @RequestMapping(value = "submitPractice")
    public DataPackage<PracticeResultResp> submitPractice(@RequestBody SubmitPracticeParam param) throws CommonException {
        PracticeResultResp resp = practiceInfoService.submitPractice(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,resp);
    }

    @ApiOperation(value = "提交练习题", notes = "提交练习题")
    @RequestMapping(value = "batchSubmitPractice")
    public DataPackage<List<BatchSubmitPracticeResp>> batchSubmitPractice(@RequestBody BatchSubmitPracticeParam param) throws CommonException {
        List<BatchSubmitPracticeResp> resp = practiceInfoService.batchSubmitPractice(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,resp);
    }


    @ApiOperation(value = "错题左侧列表", notes = "错题左侧列表")
    @RequestMapping(value = "queryWrongQuestionClassifyInfo")
    public DataPackage<List<KpsClassifyInfoResp>> queryWrongQuestionClassifyInfo(){
        DataWithNum<List<KpsClassifyInfoResp>> dataWithNum = practiceInfoService.queryWrongQuestionClassifyInfo();
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,dataWithNum.getData(), dataWithNum.getTotal());
    }

    @ApiOperation(value = "错题回顾", notes = "错题回顾")
    @RequestMapping(value = "reviewOfIncorrectQuestions")
    public DataPackage<List<ReviewOfIncorrectQuestionsResp>> reviewOfIncorrectQuestions(@RequestBody ReviewOfIncorrectQuestionsParam param) {
        DataWithNum<List<ReviewOfIncorrectQuestionsResp>> dataWithNum = practiceInfoService.reviewOfIncorrectQuestions(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, dataWithNum.getData(), dataWithNum.getTotal());
    }

}