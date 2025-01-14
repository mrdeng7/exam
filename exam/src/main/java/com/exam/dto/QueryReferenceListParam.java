package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/15:08
 * @Version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class QueryReferenceListParam extends PageParam{

    @ApiModelProperty(value = "考试id", required = true)
    private Integer examId;

    @ApiModelProperty(value = "true: 返回已考的学生名单， false：返回未考的学生名单")
    private Boolean examined;
}
