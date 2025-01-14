package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

/**
 * @className: QueryQuestionParam
 * @description: TODO
 * @author: si_lijing
 * @date: 2024-04-07 17:41
 */
@EqualsAndHashCode(callSuper = true)
@Data
@AllArgsConstructor
@NoArgsConstructor
public class QueryQuestionParam extends PageParam{
    @ApiModelProperty(value = "题型", required = true)
    private Integer questionTypeId;
}
