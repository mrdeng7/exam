package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/14:04
 * @Version 1.0
 */
@Data
public class DelClassInfoParam {
    @ApiModelProperty(value = "班级id", required = true)
    private Integer classId;
}
