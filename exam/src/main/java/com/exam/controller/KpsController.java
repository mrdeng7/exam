package com.exam.controller;

import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.service.IKpsService;
import com.exam.service.IModuleService;
import com.exam.vo.KpsResp;
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
@RequestMapping(value = "kps", method = RequestMethod.POST)
@Validated
@Api(value = "知识点通用接口", tags = "知识点通用接口")
public class KpsController {
    @Resource
    IKpsService kpsService;

    @ApiOperation(value = "获取知识点信息", notes = "获取知识点信息")
    @RequestMapping(value = "queryKpsInfo")
    public DataPackage<List<KpsResp>> queryKpsInfo(@RequestBody QueryKpsParam param) {
        DataWithNum<List<KpsResp>> respDataWithNum = kpsService.queryKpsInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, respDataWithNum.getData(), respDataWithNum.getTotal());
    }

    @ApiOperation(value = "修改知识点信息", notes = "获取知识点信息")
    @RequestMapping(value = "updateKpsInfo")
    public DataPackage<Boolean> updateKpsInfo(@RequestBody UpdateKpsInfoParam param) throws CommonException {
        Boolean result = kpsService.updateKpsInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

    @ApiOperation(value = "新增知识点信息", notes = "获取知识点信息")
    @RequestMapping(value = "addKpsInfo")
    public DataPackage<Boolean> addKpsInfo(@RequestBody AddKpsInfoParam param) throws CommonException {
        Boolean result = kpsService.addKpsInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

    @ApiOperation(value = "删除知识点信息", notes = "获取知识点信息")
    @RequestMapping(value = "delKpsInfo")
    public DataPackage<Boolean> delKpsInfo(@RequestBody DelKpsParam param) throws CommonException {
        Boolean result = kpsService.delKpsInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }


}
