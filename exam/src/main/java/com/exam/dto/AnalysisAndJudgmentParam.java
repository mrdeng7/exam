package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/28/22:44
 * @Version 1.0
 */
@Data
public class AnalysisAndJudgmentParam {
    @ApiModelProperty(value = "练习题详情记录id", required = true)
    private Integer practiceDetailId;

    @ApiModelProperty(value = "题目id", required = true)
    private Integer questionId;

    @ApiModelProperty(value = "学生填写的答案", required = true)
    private String questionKeyByUser;

    @ApiModelProperty(value = "用户id", required = true)
    private Integer userId;
}
