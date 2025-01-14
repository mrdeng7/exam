package com.exam.service.impl;

import cn.hutool.core.collection.CollectionUtil;
import com.exam.entity.RolePermissionEntity;
import com.exam.po.RolePermissionBean;
import com.exam.dao.RolePermissionDao;
import com.exam.service.IRolePermissionService;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import org.springframework.stereotype.Service;

import java.util.Collections;
import java.util.List;

/**
 * <p>
 *  服务实现类
 * </p>
 *
 * @author jone
 * @since 2024-03-24
 */
@Service
public class RolePermissionServiceImpl extends ServiceImpl<RolePermissionDao, RolePermissionBean> implements IRolePermissionService {

    @Override
    public List<RolePermissionEntity> findPermissionByRoleIds(List<Integer> roleIds) {
        if (CollectionUtil.isEmpty(roleIds)){
            return Collections.emptyList();
        }

        return baseMapper.findPermissionByRoleIds(roleIds);
    }
}
