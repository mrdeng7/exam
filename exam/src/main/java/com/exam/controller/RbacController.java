package com.exam.controller;

import com.exam.dto.QueryPermissionParam;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.po.RoleBean;
import com.exam.service.IRbacService;
import com.exam.vo.PermissionResp;
import com.exam.vo.RolePermissionResp;
import com.exam.vo.RoleResp;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/16:38
 * @Version 1.0
 */
@RestController
@RequestMapping(value = "rbac", method = RequestMethod.POST)
@Validated
@Api(value = "权限管理接口", tags = "权限管理接口")
public class RbacController {
    @Resource
    IRbacService rbacService;

    @ApiOperation(value = "获取所有的角色", notes = "查询账号基本信息")
    @RequestMapping(value = "queryAllRoles")
    public DataPackage<List<RoleResp>> queryAllRoles() {
        DataWithNum<List<RoleResp>> respDataWithNum = rbacService.queryAllRoles();
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, respDataWithNum.getData(), respDataWithNum.getTotal());
    }

    @ApiOperation(value = "获取角色下所有的的权限", notes = "查询账号基本信息")
    @RequestMapping(value = "queryPermissionByRoleId")
    public DataPackage<List<RolePermissionResp>> queryPermissionByRoleId(@RequestBody QueryPermissionParam param) {
        List<RolePermissionResp> result = rbacService.findAllRolePermissions(param.getRoleIds());
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, result);
    }

}
