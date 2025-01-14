package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/21:17
 * @Version 1.0
 */
@Data
@TableName("answer_details")
public class AnswerDetailsBean {

    @TableId(type= IdType.AUTO)
    @TableField("answer_detail_id")
    private Integer answerDetailId;


    @TableField("answer_situation_id")
    @ApiModelProperty(value = "考试答题情况 id")
    private Integer answerSituationId;

    @ApiModelProperty(value = "试卷试题 id")
    @TableId(value = "exam_paper_question_id")
    private Integer examPaperQuestionId;

    @TableField("question_key_by_user")
    @ApiModelProperty(value = "学生答案")
    private String questionKeyByUser;

    @ApiModelProperty(value = "score")
    private BigDecimal score;

    @ApiModelProperty(value = "1:正确, 2: 错误, 3: 对了一丢丢")
    private Integer status;
}
