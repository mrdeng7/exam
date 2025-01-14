package com.exam.vo;

import com.baomidou.mybatisplus.annotation.TableField;
import com.exam.po.KpsBean;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/22:03
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class ModuleAndKpsResp {
    @ApiModelProperty(value = "章节模块id")
    private Integer moduleId;

    @ApiModelProperty(value = "章节模块名称")
    private String moduleName;

    @ApiModelProperty(value = "知识点")
    private List<KpsBean> kpsBeanList;
}
