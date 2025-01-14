package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/18:25
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ClassResp {
    @ApiModelProperty(value = "班级id")
    private Integer classId;

    @ApiModelProperty(value = "班级名称")
    private String className;

}
