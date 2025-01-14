package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.math.BigDecimal;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/05/18:55
 * @Version 1.0
 */
@Data
public class ExamsClassifyResp {

    @ApiModelProperty(value = "试卷组成 id")
    private Integer composeOfExamId;

    @ApiModelProperty(value = "题型序号")
    private String number;

    @ApiModelProperty(value = "题型")
    private Integer questionTypeId;

    @ApiModelProperty(value = "题型名称")
    private String questionTypeName;

    @ApiModelProperty(value = "每道题分数")
    private BigDecimal scoreForEachQuestion;

    @ApiModelProperty(value = "数量")
    private Integer quantity;
}
