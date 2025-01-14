package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/14:09
 * @Version 1.0
 */
@Data
public class AddKpsInfoParam {
    @ApiModelProperty(value = "知识点名称")
    private String kpsName;

    @ApiModelProperty(value = "所属题型id")
    private Integer moduleId;
}
