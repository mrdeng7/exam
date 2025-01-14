package com.exam.controller;

import com.exam.dto.DelClassInfoParam;
import com.exam.dto.QueryClassInfoParam;
import com.exam.dto.QuerySchoolInfoParam;
import com.exam.dto.UpdateClassInfoParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.IClassService;
import com.exam.service.ISchoolService;
import com.exam.vo.ClassResp;
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
 *@className: ClassController
 *@description: TODO
 *@author: si_lijing
 *@date: 2024-03-28 19:52
 */
@RestController
@RequestMapping(value = "class", method = RequestMethod.POST)
@Validated
@Api(value = "班级通用接口", tags = "班级通用接口")
public class ClassController {
    @Resource
    IClassService classService;

    @ApiOperation(value = "查询班级信息", notes = "查询学校信息")
    @RequestMapping(value = "queryClassInfo")
    public DataPackage<List<ClassResp>> queryClassInfo(@RequestBody QueryClassInfoParam param) {
        DataWithNum<List<ClassResp>> dataWithNum = classService.queryClassInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, dataWithNum.getData(), dataWithNum.getTotal());
    }

    @ApiOperation(value = "修改班级信息", notes = "查询学校信息")
    @RequestMapping(value = "updateClassInfo")
    public DataPackage<Boolean> updateClassInfo(@RequestBody UpdateClassInfoParam param) {
        Boolean result = classService.updateClassInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

    @ApiOperation(value = "删除班级信息", notes = "查询学校信息")
    @RequestMapping(value = "delClassInfo")
    public DataPackage<Boolean> delClassInfo(@RequestBody DelClassInfoParam param) {
        Boolean result = classService.delClassInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }
}
