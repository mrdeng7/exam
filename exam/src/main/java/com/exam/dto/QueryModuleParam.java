package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/22:03
 * @Version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class QueryModuleParam extends PageParam{

    @ApiModelProperty(value = "模块名称")
    private String moduleName;
}
