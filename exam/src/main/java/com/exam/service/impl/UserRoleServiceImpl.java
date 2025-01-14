package com.exam.service.impl;

import cn.hutool.core.util.ObjectUtil;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.exam.dao.UserRoleDao;
import com.exam.po.RoleBean;
import com.exam.po.UserRoleBean;
import com.exam.service.IUserRoleService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Collections;
import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/17:11
 * @Version 1.0
 */
@Service
public class UserRoleServiceImpl extends ServiceImpl<UserRoleDao, UserRoleBean> implements IUserRoleService {


    @Override
    public List<RoleBean> findAllRolesByUserId(Integer userId) {
        if (ObjectUtil.isNull(userId)){
            return Collections.emptyList();
        }
        return baseMapper.findAllRolesByUserId(userId);
    }
}
