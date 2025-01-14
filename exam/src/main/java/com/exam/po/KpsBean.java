package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

/**
 * @author jone
 * @Description 知识点实体
 * @Date 2024/03/24/20:47
 * @Version 1.0
 */
@Data
@TableName("kps")
public class KpsBean {

    @TableId(type = IdType.AUTO)
    @TableField("kps_id")
    private Integer kpsId;

    @TableField("kps_name")
    @ApiModelProperty(value = "知识点")
    private String kpsName;

    @TableField("module_id")
    @ApiModelProperty(value = "题型id")
    private Integer moduleId;
}
