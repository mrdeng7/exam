package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: StudentEntity
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 17:18
 */
@Data
@TableName("student")
public class StudentBean {
    @TableField("student_id")
    @TableId(type= IdType.AUTO)
    private Integer studentId;

    @TableField("student_name")
    private String studentName;

    @ApiModelProperty(value = "性别，1-男 ， 2- 女")
    private int gender;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @TableField("student_no")
    private String studentNo;

    @TableField("class_id")
    private Integer classId;

    @TableField("user_id")
    private Integer userId;
}
