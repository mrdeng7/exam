package com.exam.vo;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/04/18:51
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ExamsResp implements Serializable {

    private static final long serialVersionUID = 1L;

    @ApiModelProperty(value = "考试id")
    private Integer examId;

    @ApiModelProperty(value = "考试开放时间")
    private Long openingHours;

    @ApiModelProperty(value = "考试截止时间")
    private Long deadline;

    @ApiModelProperty(value = "考试时长（分钟）")
    private Integer duration;

    @ApiModelProperty(value = "考试说明")
    private String explainInfo;

    @ApiModelProperty(value = "是否公布成绩, 1:是")
    private Integer announceTheResult;

    @ApiModelProperty(value = "考试安排人（老师id）")
    private Integer teacherId;


    @ApiModelProperty(value = "试卷id")
    private Integer examPaperId;

    @ApiModelProperty(value = "试卷名称")
    private String paperName;

    @ApiModelProperty(value = "状态（是否禁用，1-是， 0-否）")
    private Integer status;

    @ApiModelProperty(value = "试卷描述")
    private String description;

    @ApiModelProperty(value = "是否参加了考试，true: 是，false：否")
    private Boolean takeTheExam;
}
