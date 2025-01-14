package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: UserBean
 * @description: 用户实体类
 * @author: jone
 * @date: 2024-03-23 17:44
 */
@Data
@TableName("user")
public class UserBean {
    @TableField("user_id")
    @TableId(type= IdType.AUTO)
    private Integer userId;

    @TableField("phone")
    private String phone;

    @TableField("password")
    private String password;

    @ApiModelProperty("status, 账号状态，0-启用，1-到期，2-冻结，3-注销")
    private Integer status;

    @ApiModelProperty("type, 1-学生, 2-老师， 3-游客")
    private Integer type;

    @ApiModelProperty(value = "学校id")
    @TableField(value = "school_id")
    private Integer schoolId;

    @ApiModelProperty(value = "是否允许异地登录（1是，0否）")
    @TableField("allow_other_login")
    private Integer allowOtherLogin;

    @ApiModelProperty(value = "过期时间")
    @TableField("expire_time")
    private Long expireTime;

    @ApiModelProperty(value = "创建时间")
    @TableField("create_time")
    private Long createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_time")
    private Long updateTime;

}
