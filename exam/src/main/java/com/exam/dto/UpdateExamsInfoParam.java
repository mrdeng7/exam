package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/04/18:53
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class UpdateExamsInfoParam {
    @ApiModelProperty(value = "考试id", required = true)
    private Integer examId;

    @ApiModelProperty(value = "考试开放时间")
    private Long openingHours;

    @ApiModelProperty(value = "考试截止时间")
    private Long deadline;

    @ApiModelProperty(value = "考试时长（分钟）")
    private Integer duration;

    @ApiModelProperty(value = "考试说明")
    private String explainInfo;

    @ApiModelProperty(value = "是否公布成绩, 1:是")
    private Integer announceTheResult;

    @ApiModelProperty(value = "考试安排人（老师id）")
    private Integer teacherId;


    @ApiModelProperty(value = "试卷id")
    private Integer examPaperId;

}
