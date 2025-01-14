package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:27
 * @Version 1.0
 */
@Data
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class UpdateUserStatusParam implements Serializable {
    private static final long serialVersionUID = -8492058081579484673L;

    @ApiModelProperty(value = "用户id", required = true)
    @NotBlank(message = "用户id 不能为空")
    private Integer userId;

    @ApiModelProperty(value = "用户需要修改的状态", required = true)
    @NotNull(message = "用户需要修改的状态 不能为空, 账号状态，0-启用，1-到期，2-冻结，3-注销")
    private Integer status;

}