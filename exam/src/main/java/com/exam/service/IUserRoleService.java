package com.exam.service;

import com.baomidou.mybatisplus.extension.service.IService;
import com.exam.po.RoleBean;
import com.exam.po.UserRoleBean;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
public interface IUserRoleService extends IService<UserRoleBean> {

    List<RoleBean> findAllRolesByUserId(Integer userId);

}
