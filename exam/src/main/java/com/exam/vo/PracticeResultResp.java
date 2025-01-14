package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.Data;
import lombok.Value;

import java.math.BigDecimal;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/29/23:40
 * @Version 1.0
 */
@Data
public class PracticeResultResp {
    @ApiModelProperty(value = "属于哪个试卷/练习题记录")
    private Integer practiceInfoId;

    @ApiModelProperty(value = "正确率")
    private BigDecimal accuracy;

    @ApiModelProperty(value = "总题数")
    private Integer total;

    @ApiModelProperty(value = "正确数")
    private Long correctTotal;


}
