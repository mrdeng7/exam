package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.Data;

import java.math.BigDecimal;


/**
 * @author jone
 * @Description 练习记录表，记录学生对于某次练习试卷做题的结果
 * @Date 2024/03/24/21:53
 * @Version 1.0
 */
@Data
@TableName("practice_record")
public class PracticeRecordBean {
    @TableId(type= IdType.AUTO)
    @TableField("parctice_id")
    private Integer parcticeId;

    @TableField("practice_detail_id")
    @ApiModelProperty(value = "试卷详情id")
    private Integer practiceDetailId;

    @TableField("student_id")
    @ApiModelProperty(value = "学生id")
    private Integer studentId;

    @ApiModelProperty(value = "正确率")
    private BigDecimal accuracy;

    @ApiModelProperty(value = "答题时间")
    @TableField("practice_time")
    private Long practiceTime;

    @ApiModelProperty(value = "状态：1-已完成, 0-未完成")
    private Integer status;
}
