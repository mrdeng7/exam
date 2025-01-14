package com.exam.po;

import com.baomidou.mybatisplus.annotation.*;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author jone
 * @Description 题目表
 * @Date 2024/03/24/20:38
 * @Version 1.0
 */
@Data
@TableName("question")
public class QuestionBean {
    @TableId(type = IdType.AUTO)
    @TableField("question_id")
    private Integer questionId;

    @TableField("question_type_id")
    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;

    @ApiModelProperty(value = "知识点")
    @TableField("kps_id")
    private Integer kpsId;

    @ApiModelProperty(value = "模块id")
    @TableField(value = "module_id")
    private Integer moduleId;

    @ApiModelProperty(value = "题干")
    private String question;

    @TableField("question_key")
    @ApiModelProperty(value = "参考答案")
    private String questionKey;

    @ApiModelProperty(value = "难易程度")
    @TableField(updateStrategy = FieldStrategy.IGNORED)
    private Integer difficulty;

    @ApiModelProperty(value = "解析")
    @TableField(updateStrategy = FieldStrategy.IGNORED)
    private String analysis;

    @ApiModelProperty(value = "分值")
    private BigDecimal score;

    @ApiModelProperty(value = "创建时间")
    @TableField("create_time")
    private Long createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_time")
    private Long updateTime;
}
