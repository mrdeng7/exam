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
public class DelKpsParam {
    @ApiModelProperty(value = "知识点id", required = true)
    private String kpsId;
}
