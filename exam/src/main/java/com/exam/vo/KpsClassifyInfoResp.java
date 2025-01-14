package com.exam.vo;

import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

import java.util.List;

/**
 * @author lj
 * @Description TODO
 * @Date 2024/04/11/23:52
 * @Version 1.0
 */
@Data
public class KpsClassifyInfoResp {
    @ApiModelProperty(value = "模块id")
    private Integer moduleId;

    @ApiModelProperty(value = "章节模块名称")
    private String moduleName;

    private List<PracticeClassifyResp> classifyInfos;
}
