package com.exam.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * 试卷信息
 * @author jone
 * @since 2024-03-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("exam_paper")
public class ExamPaperBean implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 试卷 id
     */
    @TableId(value = "exam_paper_id", type = IdType.AUTO)
    private Integer examPaperId;

    /**
     * 试卷名称
     */
    private String paperName;

    /**
     * 组卷人(老师id)
     */
    @TableField(value = "teacher_id")
    private Integer teacherId;

    /**
     * 状态（是否禁用，1-是， 0-否）
     */
    private Integer status;

    /**
     * 试卷描述
     */
    private String description;


}
