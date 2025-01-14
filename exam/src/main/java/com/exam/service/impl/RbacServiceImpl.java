package com.exam.service.impl;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.collection.CollectionUtil;
import com.exam.entity.DataWithNum;
import com.exam.entity.RolePermissionEntity;
import com.exam.po.PermissionBean;
import com.exam.po.RoleBean;
import com.exam.service.IRbacService;
import com.exam.service.IRolePermissionService;
import com.exam.service.IRoleService;
import com.exam.service.IUserRoleService;
import com.exam.vo.PermissionResp;
import com.exam.vo.RolePermissionResp;
import com.exam.vo.RoleResp;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

/**
 *@className: RbacServiceImpl
 *@description: TODO
 *@author: jone
 *@date: 2024-03-26 00:08
 */
@Service
public class RbacServiceImpl implements IRbacService {
    @Resource
    IRoleService roleService;
    @Resource
    IUserRoleService userRoleService;
    @Resource
    IRolePermissionService rolePermissionService;

    @Override
    public List<RoleBean> findAllUserRoles(Integer userId) {
        // 查询用户所拥有的角色
        return userRoleService.findAllRolesByUserId(userId);
    }

    @Override
    public List<PermissionResp> findAllPermissionsByRoleIds(List<Integer> roleIds) {
        // 根据角色id 查询拥有的权限
        List<RolePermissionEntity> permissionByRoleIds = rolePermissionService.findPermissionByRoleIds(roleIds);
        if (CollectionUtil.isEmpty(permissionByRoleIds)){
            return Collections.emptyList();
        }

        return permissionByRoleIds.stream().map(sig -> {
            PermissionResp tmp = new PermissionResp();
            tmp.setPermissionId(sig.getPermissionId());
            tmp.setPermissionName(sig.getPermissionName());
            return tmp;
        }).collect(Collectors.toList());
    }

    @Override
    public List<RolePermissionResp> findAllRolePermissions(List<Integer> roleIds) {
        // 根据角色id 查询拥有的权限
        List<RolePermissionEntity> permissionByRoleIds = rolePermissionService.findPermissionByRoleIds(roleIds);
        if (CollectionUtil.isEmpty(permissionByRoleIds)){
            return Collections.emptyList();
        }

        Map<Long, List<RolePermissionEntity>> collect = permissionByRoleIds.stream().collect(Collectors.groupingBy(RolePermissionEntity::getRoleId));
        List<RolePermissionResp> result = new ArrayList<>(collect.size());
        for (Map.Entry<Long, List<RolePermissionEntity>> entry : collect.entrySet()) {
            Long roleId = entry.getKey();
            RolePermissionResp resp = new RolePermissionResp();
            // 构建权限 bean
            List<PermissionResp> permissionResps = entry.getValue().stream().map(sig -> {
                PermissionResp permissionTmp = new PermissionResp();
                permissionTmp.setPermissionId(sig.getPermissionId());
                permissionTmp.setPermissionName(sig.getPermissionName());
                return permissionTmp;
            }).collect(Collectors.toList());

            resp.setRoleId(roleId);
            resp.setPermissionResps(permissionResps);

            result.add(resp);
        }

        return result;
    }

    @Override
    public DataWithNum<List<RoleResp>> queryAllRoles() {
        List<RoleBean> list = roleService.list();
        if (CollectionUtil.isEmpty(list)){
            return new DataWithNum<>(Collections.emptyList(), 0L);
        }
        long total = list.size();
        List<RoleResp> datas = list.parallelStream().map(sig -> {
            RoleResp tmp = new RoleResp();
            BeanUtil.copyProperties(sig, tmp);
            return tmp;
        }).collect(Collectors.toList());
        return new DataWithNum<>(datas, total);
    }
}
