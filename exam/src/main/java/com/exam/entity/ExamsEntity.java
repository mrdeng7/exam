package com.exam.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/04/17:54
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExamsEntity implements Serializable {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "考试说明 id")
    private Integer examId;

    @ApiModelProperty(value = "试卷 id")
    private Integer examPaperId;

    @ApiModelProperty(value = "试卷名称")
    private String paperName;

    @ApiModelProperty(value = "考试状态，1：完成，2：未完成")
    private Integer examStatus;

    @ApiModelProperty(value = "考试说明")
    private String explainInfo;

    @ApiModelProperty(value = "考试开放时间")
    private Long openingHours;

    @ApiModelProperty(value = "考试截止时间")
    private Long deadline;

    @ApiModelProperty(value = "考试时长（分钟）")
    private Integer duration;

    @ApiModelProperty(value = "是否公布成绩")
    private Integer announceTheResult;
}