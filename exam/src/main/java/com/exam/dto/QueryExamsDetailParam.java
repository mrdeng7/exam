package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/16:51
 * @Version 1.0
 */

@Data
public class QueryExamsDetailParam {
    @ApiModelProperty(value = "试卷 id", required = true)
    private Integer examPaperId;
}
