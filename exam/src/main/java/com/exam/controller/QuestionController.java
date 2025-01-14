package com.exam.controller;

import com.exam.dto.AddQuestionParam;
import com.exam.dto.QueryQuestionParam;
import com.exam.dto.UpdateQuestionParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.IQuestionService;
import com.exam.service.IQuestionTypeService;
import com.exam.vo.QuestionResp;
import com.exam.vo.QuestionTypeResp;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/14:16
 * @Version 1.0
 */
@RestController
@RequestMapping(value = "question", method = RequestMethod.POST)
@Validated
@Api(value = "题库通用接口", tags = "题库通用接口")
public class QuestionController {
    @Resource
    IQuestionService questionService;
    @Resource
    IQuestionTypeService questionTypeService;

    @ApiOperation(value = "查询题目类型", notes = "查询题目类型")
    @RequestMapping(value = "queryQuestionTypeInfo")
    public DataPackage<List<QuestionTypeResp>> queryQuestionTypeInfo() {
        DataWithNum<List<QuestionTypeResp>> dataWithNum = questionTypeService.queryQuestionTypeInfo();
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, dataWithNum.getData(), dataWithNum.getTotal());
    }

    @ApiOperation(value = "查询题目", notes = "查询题目类型")
    @RequestMapping(value = "queryQuestions")
    public DataPackage<List<QuestionResp>> queryQuestions(@RequestBody QueryQuestionParam param) {
        DataWithNum<List<QuestionResp>> dataWithNum = questionService.queryQuestions(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, dataWithNum.getData(), dataWithNum.getTotal());
    }

    @ApiOperation(value = "修改题目", notes = "修改题目")
    @RequestMapping(value = "updateQuestions")
    public DataPackage<Boolean> updateQuestions(@RequestBody @Validated UpdateQuestionParam param) {
        Boolean result = questionService.updateQuestions(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }
    @ApiOperation(value = "删除题目", notes = "删除题目")
    @RequestMapping(value = "delQuestions")
    public DataPackage<Boolean> delQuestions(@RequestBody UpdateQuestionParam param) {
        Boolean result = questionService.delQuestions(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }
    @ApiOperation(value = "添加题目", notes = "删除题目")
    @RequestMapping(value = "addQuestions")
    public DataPackage<Boolean> addQuestions(@RequestBody AddQuestionParam param) {
        Boolean result = questionService.addQuestions(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }
}
