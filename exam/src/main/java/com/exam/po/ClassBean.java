package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.Data;

/**
 *@className: ClassBean
 *@description: TODO
 *@author: jone
 *@date: 2024-03-27 13:00
 */
@Data
@TableName("class_table")
public class ClassBean {

    @TableId(type = IdType.AUTO)
    @TableField("class_id")
    private int classId;

    @TableField("class_name")
    @ApiModelProperty(value = "班级名称")
    private String className;

    @TableField("teacher_id")
    @ApiModelProperty(value = "老师id")
    private Integer teacherId;
}
