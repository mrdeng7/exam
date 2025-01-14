package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:22
 * @Version 1.0
 */
@Data
@EqualsAndHashCode
public class UpdateUserPsdParam implements Serializable {
    private static final long serialVersionUID = 5416631683152479964L;
    @ApiModelProperty(value = "用户id", required = true)
    @NotBlank(message = "用户id不能为空")
    private Integer userId;

    @ApiModelProperty(value = "用户密码", required = true)
    @NotBlank(message = "用户密码不能为空")
    private String password;
}
