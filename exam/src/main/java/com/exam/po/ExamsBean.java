package com.exam.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 *  考试信息
 * @author jone
 * @since 2024-03-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("exams")
public class ExamsBean implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "exam_id", type = IdType.AUTO)
    private Integer examId;

    /**
     * 考试开放时间
     */
    @TableField(value = "opening_hours")
    private Long openingHours;

    /**
     * 考试截止时间
     */
    private Long deadline;

    /**
     * 考试时长（分钟）
     */
    private Integer duration;

    /**
     * 考试说明
     */
    @TableField(value = "explain_info")
    private String explainInfo;

    /**
     * 是否公布成绩
     */
    @TableField(value = "announce_the_result")
    private Integer announceTheResult;

    /**
     * 试卷id
     */
    @TableField(value = "exam_paper_id")
    private Integer examPaperId;

    @ApiModelProperty(value = "所属班级id")
    @TableField(value = "class_id")
    private String classId;
    /**
     * 考试安排人（老师id）
     */
    @TableField(value = "teacher_id")
    private Integer teacherId;


}
