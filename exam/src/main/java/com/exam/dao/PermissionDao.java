package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.PermissionBean;
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
public interface PermissionDao extends BaseMapper<PermissionBean> {
    List<PermissionBean> findUserPermissionByUserId(@Param("userId") Long userId);

}
