package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/18:39
 * @Version 1.0
 */
@Data
public class QueryExamsClassifyInfoParam {
    @ApiModelProperty(value = "试卷 id", required = true)
    private Integer examPaperId;
}
