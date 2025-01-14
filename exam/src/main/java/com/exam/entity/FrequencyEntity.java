package com.exam.entity;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/04/04/11:00
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class FrequencyEntity {
    @ApiModelProperty(value = "kpsId")
    private Integer kpsId;

    @ApiModelProperty(value = "数量")
    private Integer frequency;

    @ApiModelProperty(value = "占比")
    private BigDecimal percentage;
}
