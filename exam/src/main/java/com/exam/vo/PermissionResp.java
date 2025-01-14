package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/16:55
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class PermissionResp {
    @ApiModelProperty(value = "权限id")
    private Long permissionId;

    @ApiModelProperty(value = "权限名称")
    private String permissionName;
}
