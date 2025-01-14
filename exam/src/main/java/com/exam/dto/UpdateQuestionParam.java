package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;


/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/13/23:43
 * @Version 1.0
 */
@Data
public class UpdateQuestionParam {
    @ApiModelProperty(value = "题目id", required = true)
    @NotNull(message = "题目id不能为空")
    private Integer questionId;

    @ApiModelProperty(value = "知识点", required = true)
    @NotNull(message = "知识点不能为空")
    private Integer kpsId;

    @ApiModelProperty(value = "模块id", required = true)
    @NotNull(message = "模块id不能为空")
    private Integer moduleId;

    @ApiModelProperty(value = "题干", required = true)
    @NotBlank(message = "题干不能为空")
    private String question;

    @ApiModelProperty(value = "参考答案", required = true)
    @NotBlank(message = "参考答案不能为空")
    private String questionKey;

    @ApiModelProperty(value = "难易程度")
    private Integer difficulty;

    @ApiModelProperty(value = "解析")
    private String analysis;
}
