package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import io.swagger.models.auth.In;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/19:23
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class GenerateQuestionsParam {
    @ApiModelProperty(value = "类型：1：按模块，2：按模块知识点，3：系统推荐，4：错题练习，5：随机练习", required = true, example = "1")
    @NotNull(message = "练习题类型不能为空")
    private Integer type;

    @ApiModelProperty(value = "模块或者知识点id",required = false, example = "1")
    private Integer moduleOrKpsId;

    @ApiModelProperty(value = "题型 id", required = false, example = "1")
    private Integer questionTypeId;

    @ApiModelProperty(value = "用户id")
    private Integer userId;

}
