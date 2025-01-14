package com.exam.dto;

import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/14:00
 * @Version 1.0
 */
@Data
public class UpdateClassInfoParam {
    @ApiModelProperty(value = "班级id")
    private Integer classId;

    @ApiModelProperty(value = "班级名称", required = false)
    private String className;

    @ApiModelProperty(value = "老师id")
    private Integer teacherId;
}
