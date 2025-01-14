package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotBlank;
import java.io.Serializable;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:22
 * @Version 1.0
 */
@Data
@EqualsAndHashCode(callSuper = false)
public class QueryUserParam extends PageParam implements Serializable {
    private static final long serialVersionUID = 5416631683152479964L;

    @ApiModelProperty(value = "检索词")
    private String searchWord;
}
