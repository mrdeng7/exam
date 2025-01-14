package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.Data;

/**
 * @className: PermissionStore
 * @description: 权限
 * @author: jone
 * @date: 2024-03-23 13:47
 */
@Data
@TableName("permission")
public class PermissionBean {
    @TableId(type= IdType.AUTO)
    @TableField("permission_id")
    private Long permissionId;

    @TableField("permission_name")
    private String permissionName;
}
