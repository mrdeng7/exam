package com.exam.controller;

import cn.dev33.satoken.annotation.SaCheckRole;
import cn.dev33.satoken.annotation.SaMode;
import com.exam.config.exception.CommonException;
import com.exam.dto.QueryUserParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.IStudentService;
import com.exam.vo.StudentResp;
import com.exam.vo.UserResp;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @className: StudentController
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 13:32
 */
@RestController
@RequestMapping(value = "student", method = RequestMethod.POST)
@Validated
@Api(value = "学生通用接口", tags = "学生通用接口")
public class StudentController {
    @Resource
    IStudentService studentService;

    @ApiOperation("查询学生列表")
    @PostMapping("/queryUserList")
    //@SaCheckRole(value = {"teacher","admin"}, mode = SaMode.OR)
    public DataPackage<List<StudentResp>> queryUserList(@RequestBody @Validated QueryUserParam param) throws CommonException {
        DataWithNum<List<StudentResp>> dataWithNum = studentService.queryUserList(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, dataWithNum.getData(), dataWithNum.getTotal());
    }


}
