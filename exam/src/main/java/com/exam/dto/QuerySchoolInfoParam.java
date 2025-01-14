package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/18:29
 * @Version 1.0
 */
@EqualsAndHashCode(callSuper = true)
@Data
public class QuerySchoolInfoParam extends PageParam{

    @ApiModelProperty(value = "学校名称", required = false)
    private String schoolName;
}
