package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/14:20
 * @Version 1.0
 */
@Data
public class UpdateModuleParam {

    @ApiModelProperty(value = "章节模块id", required = true)
    private Integer moduleId;

    @ApiModelProperty(value = "章节模块名称")
    private String moduleName;

    @ApiModelProperty(value = "模块描述")
    private String moduleDescription;

}
