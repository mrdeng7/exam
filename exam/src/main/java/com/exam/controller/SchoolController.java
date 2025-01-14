package com.exam.controller;

import com.exam.dto.QuerySchoolInfoParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.ISchoolService;
import com.exam.vo.SchoolResp;
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
@RequestMapping(value = "school", method = RequestMethod.POST)
@Validated
@Api(value = "学校通用接口", tags = "学校通用接口")
public class SchoolController {

    @Resource
    ISchoolService schoolService;

    @ApiOperation(value = "查询学校信息", notes = "查询学校信息")
    @RequestMapping(value = "querySchoolInfo")
    public DataPackage<List<SchoolResp>> querySchoolInfo(@RequestBody QuerySchoolInfoParam param) {
        DataWithNum<List<SchoolResp>> dataWithNum = schoolService.querySchoolInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, dataWithNum.getData(), dataWithNum.getTotal());
    }
}