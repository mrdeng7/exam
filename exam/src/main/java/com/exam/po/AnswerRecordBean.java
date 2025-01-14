package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author jone
 * @Description 答题记录表，记录学生做过的练习题目，属于哪个练习试卷 的 哪个 练习题
 * @Date 2024/03/28/23:32
 * @Version 1.0
 */
@Data
@TableName("answer_record_bean")
public class AnswerRecordBean {
    @TableId(type= IdType.AUTO)
    @TableField("answer_record_id")
    private Integer answerRecordId;

    @TableField("practice_detail_id")
    @ApiModelProperty(value = "练习试卷详情id")
    private Integer practiceDetailId;

    @TableField("question_type_id")
    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;

    @ApiModelProperty(value = "知识点")
    @TableField("kps_id")
    private Integer kpsId;

    @ApiModelProperty(value = "模块id")
    @TableField(value = "module_id")
    private Integer moduleId;

    @TableField("student_id")
    @ApiModelProperty(value = "学生id")
    private Integer studentId;

    @TableField("question_key_by_user")
    @ApiModelProperty(value = "学生填写的答案")
    private String questionKeyByUser;

    @ApiModelProperty(value = "是否正确")
    private Boolean correct;


    @ApiModelProperty(value = "创建时间")
    @TableField("create_time")
    private Long createTime;

    @ApiModelProperty(value = "修改时间")
    @TableField("update_time")
    private Long updateTime;

}
