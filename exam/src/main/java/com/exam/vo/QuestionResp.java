package com.exam.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @className: QuestionResp
 * @description: TODO
 * @author: si_lijing
 * @date: 2024-04-07 17:41
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class QuestionResp {
    private Integer questionId;

    @TableField("question_type_id")
    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;

    @ApiModelProperty(value = "知识点")
    private Integer kpsId;

    @ApiModelProperty(value = "知识点名称")
    private String kpsName;

    @ApiModelProperty(value = "章节模块")
    private Integer moduleId;

    @ApiModelProperty(value = "章节模块名称")
    private String moduleName;

    @ApiModelProperty(value = "题干")
    private String question;

    @ApiModelProperty(value = "参考答案")
    private String questionKey;

    @ApiModelProperty(value = "难易程度")
    private Integer difficulty;

    @ApiModelProperty(value = "解析")
    private String analysis;

    @ApiModelProperty(value = "分值")
    private BigDecimal score;

    @ApiModelProperty(value = "创建时间")
    private Long createTime;

    @ApiModelProperty(value = "修改时间")
    private Long updateTime;
}
