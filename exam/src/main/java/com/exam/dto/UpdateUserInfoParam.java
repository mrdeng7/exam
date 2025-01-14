package com.exam.dto;

import io.swagger.annotations.ApiModel;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:25
 * @Version 1.0
 */
@Data
@ApiModel(value = "UpdateUserInfoParam", description = "用户基本信息修改参数类")
public class UpdateUserInfoParam  implements Serializable {
    private static final long serialVersionUID = 2294236151294931555L;

    @NotBlank(message = "用户id不能为空")
    @ApiModelProperty(value = "用户id")
    private String userId;

    @ApiModelProperty(value = "用户名称")
    @NotNull(message = "用户名称 不能为空")
    private String name;

    @ApiModelProperty(value = "性别, true:男, false:女")
    private Boolean gender;

    @ApiModelProperty(value = "用户手机号")
    private String phone;

    @ApiModelProperty(value = "用户邮箱")
    private String email;

    @ApiModelProperty(value = "用户状态，0-启用，1-过期，2-冻结")
    private String status;

    @ApiModelProperty(value = "用户所属角色")
    @NotEmpty(message = "用户所属角色 不能为空")
    private List<String> roleIds;

    @ApiModelProperty(value = "用户到期时间")
    @NotNull(message = "到期时间不能为空")
    private Long expireTime;

}
