package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @className: UserRoleBean
 * @description: 用户角色实体类
 * @author: jone
 * @date: 2024-03-23 17:21
 */
@Data
@TableName("user_role")
public class UserRoleBean {
    @TableField("user_role_id")
    @TableId(type= IdType.AUTO)
    private Integer userRoleId;

    @TableField("user_id")
    private Integer userId;

    @TableField("role_id")
    private Integer roleId;
}
