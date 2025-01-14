package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotNull;

@EqualsAndHashCode(callSuper = true)
@Data
public class QueryClassifyInfoParam extends PageParam{

    @ApiModelProperty(value = "类型：1：按模块，2：按模块知识点，3：系统推荐，4：错题练习，5：随机练习", required = true, example = "1")
    @NotNull(message = "练习题类型不能为空")
    private Integer type;

}
