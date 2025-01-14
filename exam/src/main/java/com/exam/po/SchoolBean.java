package com.exam.po;

import com.baomidou.mybatisplus.annotation.TableName;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import java.io.Serializable;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.experimental.Accessors;

/**
 * <p>
 * 
 * </p>
 *
 * @author jone
 * @since 2024-03-26
 */
@Data
@EqualsAndHashCode(callSuper = false)
@Accessors(chain = true)
@TableName("school")
public class SchoolBean implements Serializable {

    private static final long serialVersionUID = 1L;

    @TableId(value = "school_id", type = IdType.AUTO)
    private Integer schoolId;

    /**
     * 学校名称
     */
    private String schoolName;

    /**
     * 学校地址
     */
    private String schoolAddress;

    /**
     * 学校电话
     */
    private String schoolPhone;


}
