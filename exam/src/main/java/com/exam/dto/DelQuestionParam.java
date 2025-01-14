package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/14/0:15
 * @Version 1.0
 */
@Data
public class DelQuestionParam {
    @ApiModelProperty(value = "题目id", required = true)
    private Integer questionId;

}
