package com.exam.po;


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 *@className: OptionBean
 *@description: TODO
 *@author: jone
 *@date: 2024-03-27 13:17
 */
@TableName("option_table")
@Data
public class OptionBean {
    @TableId(type = IdType.AUTO)
    @TableField("option_id")
    @ApiModelProperty(value = "选项id")
    private Integer optionId;

    @TableField("option_number")
    @ApiModelProperty(value = "选项编号")
    private String optionNumber;

    @ApiModelProperty(value = "内容")
    private String content;

    @ApiModelProperty(value = "是否为答案")
    @TableField("key_whether")
    private Boolean keyWhether;

    @ApiModelProperty(value = "所属题目id")
    @TableField("question_id")
    private Integer questionId;
}
