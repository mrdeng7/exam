package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/17:57
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RolePermissionResp {
    @ApiModelProperty(value = "角色id")
    private Long roleId;

    @ApiModelProperty(value = "角色名称")
    private String roleName;

    @ApiModelProperty(value = "权限")
    private List<PermissionResp> permissionResps;
}
