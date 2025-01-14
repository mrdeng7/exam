package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 * @className: DoLoginParam
 * @description: 登录参数
 * @author: jone
 * @date: 2024-03-23 13:50
 */
@Data
public class DoLoginParam {
    @ApiModelProperty(value = "学校id")
    private Integer schoolId;

    @ApiModelProperty(value = "手机号(账号名)", required = true)
    @NotBlank(message = "手机号不能为空")
    @Size(min = 11, max = 11, message = "手机号长度为11位")
    private String phone;

    @ApiModelProperty(value = "密码", required = true)
    @NotBlank(message = "密码不能为空")
    private String password;

}
