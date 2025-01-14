package com.exam.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @className: TouristResp
 * @description: TODO
 * @author: si_lijing
 * @date: 2024-04-16 19:19
 */
@Data
public class TouristResp {
    private Integer userId;

    @ApiModelProperty(value = "手机号")
    private String phone;

    @ApiModelProperty("status, 账号状态，0-启用，1-到期，2-冻结，3-注销")
    private Integer status;

    @ApiModelProperty("type, 1-学生, 2-老师， 3-游客")
    private Integer type;

    @ApiModelProperty(value = "学校id")
    private Integer schoolId;

    @ApiModelProperty(value = "是否允许异地登录（1是，0否）")
    private Integer allowOtherLogin;

    @ApiModelProperty(value = "过期时间")
    private Long expireTime;

    @ApiModelProperty(value = "创建时间")
    private Long createTime;

    @ApiModelProperty(value = "修改时间")
    private Long updateTime;
}
