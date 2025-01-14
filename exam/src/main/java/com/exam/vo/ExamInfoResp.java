package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.math.BigDecimal;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/31/9:16
 * @Version 1.0
 */

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExamInfoResp implements Serializable {
    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "考试说明 id")
    private Integer examId;

    @ApiModelProperty(value = "试卷 id")
    private Integer examPaperId;

    @ApiModelProperty(value = "试卷名称")
    private String paperName;

    @ApiModelProperty(value = "考试状态，1：已完成考试，2：已开放考试，但未参加, 3: 考试已超时过期,不能再次作答, 4: 考试未开始")
    private Integer examStatus;

    @ApiModelProperty(value = "考试说明")
    private String explainInfo;

    @ApiModelProperty(value = "考试开放时间")
    private Long openingHours;

    @ApiModelProperty(value = "考试截止时间")
    private Long deadline;

    @ApiModelProperty(value = "考试时长（分钟）")
    private Integer duration;

    @ApiModelProperty(value = "得分")
    private BigDecimal totalScore;

    @ApiModelProperty(value = "是否公布成绩， 1:公布")
    private Integer announceTheResult;
}
