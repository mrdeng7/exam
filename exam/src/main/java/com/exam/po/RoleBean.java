package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @className: RoleBean
 * @description: 角色实体类
 * @author: jone
 * @date: 2024-03-23 17:21
 */
@Data
@TableName("role")
public class RoleBean {
    @TableId(type= IdType.AUTO)
    @TableField("role_id")
    private Integer roleId;

    @TableField("role_name")
    private String roleName;
}
