package com.exam.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @className: RolePermissionBean
 * @description: 角色权限实体类
 * @author: jone
 * @date: 2024-03-23 17:21
 */
@Data
@TableName("role_permission")
public class RolePermissionBean {
    @TableField("role_permission_id")
    @TableId
    private Integer rolePermissionId;

    @TableField("role_id")
    private Integer roleId;

    @TableField("permission_id")
    private Integer permissionId;
}
