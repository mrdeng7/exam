package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/04/18:23
 * @Version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class QueryExamParam extends PageParam{
    @ApiModelProperty(value = "考试id", required = false)
    private Integer examId;
}
