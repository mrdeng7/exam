package com.exam.service;

import com.exam.entity.RolePermissionEntity;
import com.exam.po.RolePermissionBean;
import com.baomidou.mybatisplus.extension.service.IService;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface IRolePermissionService extends IService<RolePermissionBean> {

    List<RolePermissionEntity> findPermissionByRoleIds(List<Integer> roleIds);
}
