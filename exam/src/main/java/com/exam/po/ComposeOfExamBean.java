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
 * 试卷的组成
 * @author jone
 * @since 2024-03-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("compose_of_exam")
public class ComposeOfExamBean implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 试卷组成 id
     */
    @TableId(value = "compose_of_exam_id", type = IdType.AUTO)
    private Integer composeOfExamId;

    /**
     * 试卷 id
     */
    private Integer examPaperId;

    /**
     * 题型序号
     */
    private String number;

    /**
     * 题型
     */
    private Integer questionTypeId;

    /**
     * 数量
     */
    private Integer quantity;

    /**
     * 每道题分数
     */
    private BigDecimal scoreForEachQuestion;


}
