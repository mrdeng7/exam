package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:21
 * @Version 1.0
 */
@Data
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class AddTouristRegistrationParam implements Serializable {
    private static final long serialVersionUID = 6943248611612315718L;

    @ApiModelProperty(value = "电话", required = true)
    @NotBlank(message = "电话不能为空")
    private String phone;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "学校id")
    private Integer schoolId;



}
