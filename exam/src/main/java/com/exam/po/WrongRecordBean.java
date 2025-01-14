package com.exam.po;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author jone
 * @since 2024-03-29
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("wrong_record")
public class WrongRecordBean implements Serializable {

    private static final long serialVersionUID = 1L;

    /**
     * 错题id
     */
    @TableId(value = "wrong_id", type = IdType.AUTO)
    @TableField(value = "wrong_id")
    private Integer wrongId;

    /**
     * 学生id
     */
    @TableField(value = "student_id")
    private Integer studentId;

    /**
     * 题目id
     */
    @TableField(value = "question_id")
    private Integer questionId;

    @TableField("question_type_id")
    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;

    @TableField(value = "kps_id")
    private Integer kpsId;

    @TableField(value = "module_id")
    private Integer moduleId;

    /**
     * 错误次数
     */
    @TableField(value = "wrong_time")
    private Integer wrongTime;


    @TableField(value = "create_time")
    private Long createTime;

    @TableField(value = "update_time")
    private Long updateTime;
}
