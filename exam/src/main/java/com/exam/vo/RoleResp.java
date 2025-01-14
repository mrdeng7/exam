package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/16:55
 * @Version 1.0
 */
@Data
public class RoleResp {
    @ApiModelProperty(value = "角色id")
    private Integer roleId;

    @ApiModelProperty(value = "角色名称")
    private String roleName;
}
