package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/28/22:50
 * @Version 1.0
 */
@Data
public class AnalysisAndJudgmentResp {
    @ApiModelProperty(value = "回答是否正确， true: 是， false：否")
    private Boolean correct;


    @ApiModelProperty(value = "参考答案")
    private String questionKey;

    @ApiModelProperty(value = "难易程度")
    private Integer difficulty;

    @ApiModelProperty(value = "解析")
    private String analysis;

    @ApiModelProperty(value = "分值")
    private BigDecimal score;

}
