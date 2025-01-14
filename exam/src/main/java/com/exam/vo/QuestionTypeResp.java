package com.exam.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: QuestionTypeResp
 * @description: TODO
 * @author: si_lijing
 * @date: 2024-04-07 16:59
 */
@Data
public class QuestionTypeResp {
    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;

    @TableField("question_type_name")
    @ApiModelProperty(value = "题型名称: 选择题、判断题、填空题 等...")
    private String questionTypeName;
}
