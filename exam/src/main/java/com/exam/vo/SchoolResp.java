package com.exam.vo;

import io.swagger.annotations.Api;
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
public class SchoolResp {
    private Integer schoolId;

    @ApiModelProperty(value = "学校名称")
    private String schoolName;

    @ApiModelProperty(value = "学校地址")
    private String schoolAddress;

    @ApiModelProperty(value = "学校电话")
    private String schoolPhone;

}
