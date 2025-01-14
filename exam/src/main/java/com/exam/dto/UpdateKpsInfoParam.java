package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotNull;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/14:06
 * @Version 1.0
 */
@Data
public class UpdateKpsInfoParam {
    @ApiModelProperty(value = "知识点id", required = true)
    @NotNull(message = "知识点id不能为空")
    private Integer kpsId;

    @ApiModelProperty(value = "知识点名称", required = true)
    @NotNull(message = "知识点名称不能为空")
    private String kpsName;

    @ApiModelProperty(value = "所属题型id", required = true)
    @NotNull(message = "所属题型id不能为空")
    private Integer moduleId;

}
