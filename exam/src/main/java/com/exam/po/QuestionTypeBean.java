package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @className: QuestionTypeEntity
 * @description: 题型实体类
 * @author: jone
 * @date: 2024-03-23 18:31
 */
@Data
@TableName("question_type")
@AllArgsConstructor
@NoArgsConstructor
public class QuestionTypeBean {

    @TableId(type = IdType.AUTO)
    @TableField("question_type_id")
    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;

    @TableField("question_type_name")
    @ApiModelProperty(value = "题型名称: 选择题、判断题、填空题 等...")
    private String questionTypeName;

    @TableField("subject_whether")
    @ApiModelProperty(value = "是否是主观题")
    private Boolean subjectWhether;
}
