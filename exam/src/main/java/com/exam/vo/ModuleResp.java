package com.exam.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/22:03
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ModuleResp {
    @ApiModelProperty(value = "章节模块id")
    private Integer moduleId;

    @ApiModelProperty(value = "章节模块名称")
    private String moduleName;

    @ApiModelProperty(value = "模块描述")
    private String moduleDescription;
}
