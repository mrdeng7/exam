package com.exam.entity;

import lombok.Data;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/07/23:15
 * @Version 1.0
 */
@Data
public class ExamPaperQuestionOfKeyEntity {
    private Integer examPaperQuestionId;

    private Integer questionId;

    private String questionKey;

    private Integer questionTypeId;
}
