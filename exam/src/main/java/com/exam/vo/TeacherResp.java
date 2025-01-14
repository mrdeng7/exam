package com.exam.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: TeacherResp
 * @description: TODO
 * @author: si_lijing
 * @date: 2024-04-09 20:28
 */
@Data
public class TeacherResp {
    @ApiModelProperty(value = "老师id")
    private Integer teacherId;

    @ApiModelProperty(value = "老师姓名")
    private String teacherName;

    @ApiModelProperty(value = "性别，1-男 ， 2- 女")
    private int gender;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @ApiModelProperty(value = "编号")
    private String employeeId;

    @ApiModelProperty(value = "学校id")
    private Integer schoolId;

    @ApiModelProperty(value = "学校名称")
    private String schoolName;

    @ApiModelProperty(value = "用户id")
    private Integer userId;

    @ApiModelProperty(value = "手机号")
    private String phone;

    @ApiModelProperty("status, 账号状态，0-启用，1-到期，2-冻结，3-注销")
    private Integer status;

    @ApiModelProperty(value = "过期时间")
    private Long expireTime;
}
