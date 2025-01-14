package com.exam.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: StudentResp
 * @description: TODO
 * @author: si_lijing
 * @date: 2024-04-09 20:27
 */
@Data
public class StudentResp {
    @ApiModelProperty(value = "学生id")
    private Integer studentId;

    @ApiModelProperty(value = "学生姓名")
    private String studentName;

    @ApiModelProperty(value = "性别，1-男 ， 2- 女")
    private int gender;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @ApiModelProperty(value = "学号")
    private String studentNo;

    @ApiModelProperty(value = "班级id")
    private Integer classId;

    @ApiModelProperty(value = "班级名称")
    private String className;

    @ApiModelProperty(value = "用户id")
    private Integer userId;

    @ApiModelProperty(value = "手机号")
    private String phone;

    @ApiModelProperty("status, 账号状态，0-启用，1-到期，2-冻结，3-注销")
    private Integer status;

    @ApiModelProperty(value = "过期时间")
    private Long expireTime;
}
