package com.exam.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/04/02/22:47
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ErrorRateEntity {
    private Integer kpsId;

    private Integer errorCount;

    private Integer questionCount;

    private BigDecimal errorRate;
}
