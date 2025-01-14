package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.Data;
import lombok.EqualsAndHashCode;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/11/22:23
 * @Version 1.0
 */
@Data
public class ReviewOfIncorrectQuestionsParam{
    @ApiModelProperty(value = "模块id")
    private Integer moduleId;

    @ApiModelProperty(value = "知识点id")
    private Integer kpsId;

    @ApiModelProperty(value = "题型id")
    private Integer questionTypeId;
}
