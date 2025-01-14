package com.exam.po;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 *  试卷上的各个题目
 * @author jone
 * @since 2024-03-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("exam_paper_question")
public class ExamPaperQuestionBean implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 试卷试题 id
     */
    @TableId(value = "exam_paper_question_id", type = IdType.AUTO)
    private Integer examPaperQuestionId;

    /**
     * 试卷组成 id
     */
    private Integer composeOfExamId;

    /**
     * 题目序号
     */
    private Integer number;

    /**
     * 题目 id
     */
    private Integer questionId;


}
