package com.exam.controller;

import com.exam.config.exception.CommonException;
import com.exam.dto.AddModuleInfo;
import com.exam.dto.DelModuleParam;
import com.exam.dto.QueryModuleParam;
import com.exam.dto.UpdateModuleParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.IModuleService;
import com.exam.vo.ModuleAndKpsResp;
import com.exam.vo.ModuleResp;
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
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/22:02
 * @Version 1.0
 */
@RestController
@RequestMapping(value = "module", method = RequestMethod.POST)
@Validated
@Api(value = "题型模块通用接口", tags = "题型模块通用接口")
public class ModuleController {
    @Resource
    IModuleService moduleService;

    @ApiOperation(value = "添加题型模块信息", notes = "添加题型模块信息")
    @RequestMapping(value = "addModuleInfo")
    public DataPackage<Boolean> addModuleInfo(@RequestBody AddModuleInfo param) throws CommonException {
        Boolean result = moduleService.addModuleInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

    @ApiOperation(value = "获取题型模块信息", notes = "获取题型模块信息")
    @RequestMapping(value = "queryModuleInfo")
    public DataPackage<List<ModuleResp>> queryModuleInfo(@RequestBody QueryModuleParam param) {
        DataWithNum<List<ModuleResp>> respDataWithNum = moduleService.queryModule(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, respDataWithNum.getData(), respDataWithNum.getTotal());
    }
    @ApiOperation(value = "获取题型以及知识点信息", notes = "获取题型模块信息")
    @RequestMapping(value = "queryModuleAndKps")
    public DataPackage<List<ModuleAndKpsResp>> queryModuleAndKps() {
        List<ModuleAndKpsResp> data = moduleService.queryModuleAndKps();
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, data);
    }

    @ApiOperation(value = "修改题型模块信息", notes = "获取题型模块信息")
    @RequestMapping(value = "updateModuleInfo")
    public DataPackage<Boolean> updateModuleInfo(@RequestBody UpdateModuleParam param) throws CommonException {
        Boolean result = moduleService.updateModuleInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

    @ApiOperation(value = "删除题型模块信息以及下属的知识点和题目", notes = "获取题型模块信息")
    @RequestMapping(value = "delModuleInfo")
    public DataPackage<Boolean> delModuleInfo(@RequestBody DelModuleParam param) throws CommonException {
        Boolean result = moduleService.delModuleInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

}
