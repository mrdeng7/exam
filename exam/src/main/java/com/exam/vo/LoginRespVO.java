package com.exam.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.exam.po.PermissionBean;
import com.exam.po.RoleBean;
import com.exam.po.UserBean;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import java.util.List;

/**
 * @className: LoginRespVO
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 13:47
 */

@EqualsAndHashCode()
@Data
public class LoginRespVO {
    @ApiModelProperty(value = "用户id")
    private Integer userId;

    @ApiModelProperty(value = "用户名")
    private String userName;

    @ApiModelProperty(value = "手机号")
    private String phone;

    @ApiModelProperty("status, 账号状态，0-启用，1-到期，2-冻结，3-注销")
    private Integer status;

    @ApiModelProperty(value = "用户类型",notes = "1:学生, 2:教师, 3:游客")
    private String userType;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @ApiModelProperty(value = "性别，1-男 ， 2- 女")
    private Integer gender;


    @ApiModelProperty(value = "学校id")
    private Integer schoolId;

    @ApiModelProperty(value = "是否允许异地登录（1是，0否）")
    @TableField("allow_other_login")
    private Integer allowOtherLogin;

    @ApiModelProperty(value = "过期时间")
    private Long expireTime;


    @ApiModelProperty(value = "权限")
    private List<String> permissionNames;

    @ApiModelProperty(value = "角色")
    private List<String> roleNames;

    @ApiModelProperty(value = "token")
    private String token;

    @ApiModelProperty(value = "所属的学生or老师id")
    private Integer teacherOrStudentId;

}