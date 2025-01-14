package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;
import java.math.BigDecimal;
import java.util.List;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/04/18:23
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class AddExamParam {
    @ApiModelProperty(value = "用户id", required = true)
    private Integer userId;
    @ApiModelProperty(value = "所属班级id",required = true)
    @NotEmpty(message = "所属班级id不能为空")
    private List<Integer> classIds;

    @ApiModelProperty(value = "选择题数量",required = true)
    private Integer choiceQuestionNum;

    @ApiModelProperty(value = "每道选择题分值",required = true)
    private BigDecimal choiceQuestionScore;

    @ApiModelProperty(value = "判断题数量",required = true)
    @Max(value = 15,message = "判断题数量填写异常")
    private Integer judgmentQuestionNum;

    @ApiModelProperty(value = "每道判断题分值",required = true)
    @Max(value = 30,message = "分值填写异常")
    private BigDecimal judgmentQuestionScore;

    @ApiModelProperty(value = "计算题数量",required = true)
    @Max(value = 15,message = "计算题数量填写异常")
    private Integer calculationQuestionNum;

    @ApiModelProperty(value = "每道计算题分值",required = true)
    @Max(value = 30,message = "分值填写异常")
    private BigDecimal calculationQuestionScore;

    @ApiModelProperty(value = "简答题数量",required = true)
    @Max(value = 15,message = "简答题数量填写异常")
    private Integer simpleQuestionNum;

    @ApiModelProperty(value = "每道简答题分值",required = true)
    @Max(value = 30,message = "分值填写异常")
    private BigDecimal simpleQuestionScore;

    @ApiModelProperty(value = "考试开放时间",required = true)
    private Long openingHours;

    @ApiModelProperty(value = "考试截止时间",required = true)
    private Long deadline;

    @ApiModelProperty(value = "考试时长（分钟）",required = true)
    private Integer duration;

    @ApiModelProperty(value = "考试说明")
    private String explainInfo;

    @ApiModelProperty(value = "是否公布成绩, 1:是")
    private Integer announceTheResult;

    @ApiModelProperty(value = "试卷名称",required = true)
    private String paperName;

    @ApiModelProperty(value = "试卷描述")
    private String description;
}
