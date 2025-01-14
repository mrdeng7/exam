package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author jone
 * @Description 练习表 - 类似一张试卷
 * @Date 2024/03/24/21:51
 * @Version 1.0
 */
@Data
@TableName("practice_info")
public class PracticeInfoBean {
    @TableId(type= IdType.AUTO)
    @TableField("practice_info_id")
    private Integer practiceInfoId;

    @ApiModelProperty(value = "名称")
    private String name;

    @ApiModelProperty(value = "总分值")
    private BigDecimal score;

    @ApiModelProperty(value = "正确率")
    private BigDecimal accuracy;

    @TableField("student_id")
    @ApiModelProperty(value = "学生id")
    private Integer studentId;

    @ApiModelProperty(value = "到期时间")
    @TableField("expire_time")
    private Long expireTime;

    @ApiModelProperty(value = "创建时间")
    @TableField("create_time")
    private Long createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_time")
    private Long updateTime;
}
