package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.entity.RolePermissionEntity;
import com.exam.po.RolePermissionBean;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
@Mapper
public interface RolePermissionDao extends BaseMapper<RolePermissionBean> {

    List<RolePermissionEntity> findPermissionByRoleIds(@Param("roleIds") List<Integer> roleIds);
}
