package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: TeacherEntity
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 17:19
 */
@Data
@TableName("teacher")
public class TeacherBean {
    @TableField("teacher_id")
    @TableId(type= IdType.AUTO)
    private Integer teacherId;

    @TableField("teacher_name")
    private String teacherName;

    @ApiModelProperty(value = "性别，1-男 ， 2- 女")
    private int gender;

    private String email;
    @TableField(value = "employee_id")
    private String employeeId;

    @TableField(value = "school_id")
    private Integer schoolId;

    @TableField(value = "user_id")
    private Integer userId;
}
