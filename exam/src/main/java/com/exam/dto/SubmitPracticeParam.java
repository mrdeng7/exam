package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotNull;
import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/29/22:58
 * @Version 1.0
 */
@Data
public class SubmitPracticeParam {
    @ApiModelProperty(value = "练习题记录id", required = true)
    @NotNull(message = "练习题记录id不能为空")
    private Integer practiceInfoId;

    @ApiModelProperty(value = "用户id", required = true)
    @NotNull
    private Integer userId;
}
