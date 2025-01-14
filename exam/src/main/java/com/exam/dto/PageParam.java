package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;
import lombok.EqualsAndHashCode;

import javax.validation.constraints.NotNull;
import java.io.Serializable;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:23
 * @Version 1.0
 */
@Data
@EqualsAndHashCode
public class PageParam implements Serializable {
    private static final long serialVersionUID = -6825757976041997441L;
    @NotNull(message = "页码不能为空")
    @ApiModelProperty(value = "分页 当前页, 从1开始",required = true)
    private Integer pageIndex;


    @NotNull(message = "每页条数不能为空")
    @ApiModelProperty(value = "分页 每页条数",required = true)
    private Integer pageSize;
}
