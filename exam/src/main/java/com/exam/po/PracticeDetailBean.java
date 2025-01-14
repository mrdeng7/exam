package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.Data;

/**
 * @author jone
 * @Description 练习题详情表，类似一张试卷上有哪些题目
 * @Date 2024/03/24/21:56
 * @Version 1.0
 */
@Data
@TableName("practice_detail")
public class PracticeDetailBean {
    @TableId(type= IdType.AUTO)
    @TableField("practice_detail_id")
    private Integer practiceDetailId;

    @TableField("practice_info_id")
    @ApiModelProperty(value = "属于哪个试卷/练习题记录")
    private Integer practiceInfoId;

    @ApiModelProperty(value = "题型id", example = "选择题")
    @TableField("question_type_id")
    private Integer questionTypeId;

    @TableField("question_id")
    @ApiModelProperty(value = "题目id")
    private Integer questionId;


    @ApiModelProperty(value = "创建时间")
    @TableField("create_time")
    private Long createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_time")
    private Long updateTime;
}
