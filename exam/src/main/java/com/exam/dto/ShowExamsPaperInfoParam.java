package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/16:59
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShowExamsPaperInfoParam {
    @ApiModelProperty(value = "考试答题情况 id")
    private Integer answerSituationId;

}
