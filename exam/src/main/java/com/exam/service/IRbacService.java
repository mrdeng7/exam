package com.exam.service;

import com.exam.entity.DataWithNum;
import com.exam.po.RoleBean;
import com.exam.vo.PermissionResp;
import com.exam.vo.RolePermissionResp;
import com.exam.vo.RoleResp;

import java.util.List;

/**
 *@className: RbacService
 *@description: 权限管理服务接口
 *@author: jone
 *@date: 2024-03-26 00:07
 */
public interface IRbacService{

    List<RoleBean> findAllUserRoles(Integer userId);

    List<PermissionResp> findAllPermissionsByRoleIds(List<Integer> roleIds);
    List<RolePermissionResp> findAllRolePermissions(List<Integer> roleIds);

    DataWithNum<List<RoleResp>> queryAllRoles();

}
