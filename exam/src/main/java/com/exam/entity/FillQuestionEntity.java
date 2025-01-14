package com.exam.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: FillQuestionEntity
 * @description: 填空题实体类
 * @author: jone
 * @date: 2024-03-23 18:24
 */
@Data
public class FillQuestionEntity {

    private Long id;

    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;

    @ApiModelProperty(value = "难度等级")
    private Integer difficulty;

    @ApiModelProperty(value = "题干")
    private String question;

    @ApiModelProperty(value = "参考答案")
    private String questionKey;

    @ApiModelProperty(value = "题目解析")
    private String analysis;
}
