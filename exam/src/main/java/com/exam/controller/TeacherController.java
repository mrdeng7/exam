package com.exam.controller;

import com.exam.config.exception.CommonException;
import com.exam.dto.QueryUserParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.IStudentService;
import com.exam.service.ITeacherService;
import com.exam.vo.TeacherResp;
import com.exam.vo.UserResp;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @className: TeacherController
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 17:07
 */
@RestController
@RequestMapping(value = "teacher", method = RequestMethod.POST)
@Validated
@Api(value = "老师通用接口", tags = "老师通用接口")
public class TeacherController {

    @Resource
    ITeacherService teacherService;

    @ApiOperation("用户模块-查询用户列表")
    @PostMapping("/queryUserList")
    public DataPackage<List<TeacherResp>> queryUserList(@RequestBody @Validated QueryUserParam param) throws CommonException {
        DataWithNum<List<TeacherResp>> dataWithNum = teacherService.queryUserList(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, dataWithNum.getData(), dataWithNum.getTotal());
    }
}