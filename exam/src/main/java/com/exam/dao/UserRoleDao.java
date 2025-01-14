package com.exam.dao;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.exam.po.RoleBean;
import com.exam.po.UserRoleBean;
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
public interface UserRoleDao extends BaseMapper<UserRoleBean> {

    List<RoleBean> findAllRolesByUserId(@Param("userId") Integer userId);

}
