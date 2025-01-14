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
public class KpsResp {
    @ApiModelProperty(value = "知识点id")
    private Integer kpsId;

    @ApiModelProperty(value = "知识点")
    private String kpsName;
}
