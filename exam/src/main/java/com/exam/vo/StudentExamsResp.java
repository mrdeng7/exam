package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/15:12
 * @Version 1.0
 */
@Data
public class StudentExamsResp {
    @ApiModelProperty(value = "用户id")
    private Integer userId;

    @ApiModelProperty(value = "学生姓名")
    private String studentName;

    @ApiModelProperty(value = "学号")
    private String studentNo;

    @ApiModelProperty(value = "是否参加了考试，true: 是，false：否")
    private Boolean takeTheExam;

    @ApiModelProperty(value = "考试答题情况 id")
    private Integer answerSituationId;

    @ApiModelProperty(value = "是否批阅")
    private Boolean reviewed;
}
