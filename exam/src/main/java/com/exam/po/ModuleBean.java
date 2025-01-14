package com.exam.po;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import io.swagger.annotations.ApiModelProperty;
import lombok.Data;

 /**
 * @author jone
 * @Description 章节模块实体类
 * @Date 2024/03/24/20:47
 * @Version 1.0
 */
@Data
@TableName("module")
public class ModuleBean {

    @TableId(type = IdType.AUTO)
    @ApiModelProperty(value = "章节模块id")
    @TableField("module_id")
    private Integer moduleId;

    @TableField("module_name")
    @ApiModelProperty(value = "章节模块名称")
    private String moduleName;

    @TableField("module_description")
    @ApiModelProperty(value = "模块描述")
    private String moduleDescription;

     @TableField("create_time")
    private Long createTime;

     @TableField("update_time")
    private Long updateTime;
}
