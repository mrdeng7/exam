package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/31/9:16
 * @Version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class QueryRecentExamsParam extends PageParam{

    @ApiModelProperty(value = "用户id", required = true)
    private Integer userId;
}
