package com.exam.controller;

import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.IExamsService;
import com.exam.support.AbstractQuestionsSupport;
import com.exam.vo.*;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/29/22:51
 * @Version 1.0
 */
@RestController
@RequestMapping(value = "exam", method = RequestMethod.POST)
@Validated
@Api(value = "考试通用接口", tags = "考试通用接口")
public class ExamController {
    @Resource
    IExamsService examsService;


    @ApiOperation(value = "查询近期考试", notes = "考试中心（学生端）")
    @RequestMapping(value = "queryRecentExams")
    public DataPackage<List<ExamInfoResp>> queryRecentExams(@RequestBody QueryRecentExamsParam param) throws CommonException {
        DataWithNum<List<ExamInfoResp>> dataWithNum = examsService.queryRecentExams(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,dataWithNum.getData(), dataWithNum.getTotal());
    }

    @ApiOperation(value = "获取左侧试卷组成", notes = "考试中心（学生端）")
    @RequestMapping(value = "queryExamsClassifyInfo")
    public DataPackage<List<ExamsClassifyResp>> queryExamsClassifyInfo(@RequestBody QueryExamsClassifyInfoParam param){
        List<ExamsClassifyResp> result = examsService.queryExamsClassifyInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

    @ApiOperation(value = "查询试卷详情（开始答题）", notes = "考试中心（学生端）")
    @RequestMapping(value = "queryExamsDetail")
    public DataPackage<List<ExamsDetailResp>> queryExamsDetail(@RequestBody QueryExamsDetailParam param) throws CommonException {
        List<ExamsDetailResp> resp = examsService.queryExamsDetail(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,resp);
    }

    @ApiOperation(value = "提交试卷（答题完成,统一提交）", notes = "考试中心（学生端）")
    @RequestMapping(value = "submitExams")
    public DataPackage<Boolean> submitExams(@RequestBody SubmitExamsParam param) throws CommonException {
        Boolean resp = examsService.submitExams(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,resp);
    }

    @ApiOperation(value = "添加考试信息", notes = "考试中心（老师端）")
    @RequestMapping(value = "addExams")
    public DataPackage<Boolean> addExams(@RequestBody @Validated AddExamParam param) throws CommonException {
        Boolean result = examsService.addExams(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

    @ApiOperation(value = "查询考试信息", notes = "考试中心（老师端）")
    @RequestMapping(value = "queryExamsInfo")
    public DataPackage<List<ExamsResp>> queryExamsInfo(@RequestBody QueryExamParam param) {
        DataWithNum<List<ExamsResp>> result = examsService.queryExamsInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result.getData(), result.getTotal());
    }

    @ApiOperation(value = "编辑考试信息", notes = "考试中心（老师端）")
    @RequestMapping(value = "updateExamsInfo")
    public DataPackage<Boolean> updateExamsInfo(@RequestBody UpdateExamsInfoParam param) {
        Boolean result = examsService.updateExamsInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }



    @ApiOperation(value = "查询参与指定考试的学生名单", notes = "考试中心（老师端）")
    @RequestMapping(value = "queryReferenceList")
    public DataPackage<List<StudentExamsResp>> queryReferenceList(@RequestBody QueryReferenceListParam param) {
        DataWithNum<List<StudentExamsResp>> resp = examsService.queryReferenceList(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,resp.getData(), resp.getTotal());
    }

    @ApiOperation(value = "老师阅卷 - 展示学生答题信息", notes = "考试中心（老师端）")
    @RequestMapping(value = "showExamsPaperInfo")
    public DataPackage<List<ExamsPaperInfoResp>> showExamsPaperInfo(@RequestBody ShowExamsPaperInfoParam param) {
        List<ExamsPaperInfoResp> resp = examsService.showExamsPaperInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,resp);
    }

    @ApiOperation(value = "老师阅卷 - 提交成绩(打分)", notes = "考试中心（老师端）")
    @RequestMapping(value = "markingPapers")
    public DataPackage<BigDecimal> markingPapers(@RequestBody MarkingPapersParam param) {
        BigDecimal resp = examsService.markingPapers(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS,resp);
    }
}
