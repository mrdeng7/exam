package com.exam.po;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: UserPermissionEntity
 * @description: 用户权限信息
 * @author: jone
 * @date: 2024-03-23 14:04
 */
@Data
public class UserPermissionEntity {
    @ApiModelProperty(value = "权限id")
    private Long id;

    @ApiModelProperty(value = "权限信息")
    private String name;

    private String remark;

    @ApiModelProperty(value = "用户id")
    private Long userId;
}
