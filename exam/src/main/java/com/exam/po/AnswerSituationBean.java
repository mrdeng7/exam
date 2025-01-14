package com.exam.po;

import java.math.BigDecimal;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 考试答题情况表
 * @author jone
 * @since 2024-03-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("answer_situation")
public class AnswerSituationBean implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 考试答题情况 ld
     */
    @TableId(value = "answer_situation_id", type = IdType.AUTO)
    private Integer answerSituationId;

    /**
     * 考试 id
     */
    private Integer examId;

    /**
     * 学生 id
     */
    private Integer studentId;

    /**
     * 答题时间
     */
    private Long answerTime;

    /**
     * 交卷时间
     */
    private Long submitTime;

    /**
     * 总分
     */
    private BigDecimal totalScore;

    /**
     * 是否批阅
     */
    private Boolean reviewed;

    public AnswerSituationBean(){}

    public AnswerSituationBean(Integer examId, Integer studentId) {
        this.examId = examId;
        this.studentId = studentId;
    }
}
