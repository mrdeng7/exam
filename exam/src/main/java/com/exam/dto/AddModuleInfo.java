package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/27/21:17
 * @Version 1.0
 */
@Data
public class AddModuleInfo {
    @ApiModelProperty(value = "模块名称",required = true)
    @NotEmpty(message = "模块名称不能为空")
    private String moduleName;

    @ApiModelProperty(value = "模块描述")
    private String moduleDescription;
}
