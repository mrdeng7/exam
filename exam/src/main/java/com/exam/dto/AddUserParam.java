package com.exam.dto;

import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/9:21
 * @Version 1.0
 */
@Data
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class AddUserParam implements Serializable {
    private static final long serialVersionUID = 6943248611612315718L;

    @ApiModelProperty(value = "电话", required = true)
    @NotBlank(message = "电话不能为空")
    private String phone;

    @ApiModelProperty(value = "密码")
    private String password;

    @ApiModelProperty(value = "邮箱")
    private String email;

    @ApiModelProperty(value = "用户名",required = true)
    @NotBlank(message = "用户名不能为空")
    private String name;

    @ApiModelProperty(value = "到期时间")
    @NotNull(message = "到期时间不能为空")
    private Long expireTime;

    @ApiModelProperty(value = "所属角色的id集合")
    @NotEmpty(message = "用户所属的角色不能为空")
    private List<Integer> roleIds;

    @ApiModelProperty(value = "班级id")
    private Integer classId;

    @ApiModelProperty(value = "学校id")
    private Integer schoolId;

    @ApiModelProperty(value = "1-学生, 2-老师", required = true)
    private Integer type;

    @ApiModelProperty(value = "性别，1-男 ， 2- 女")
    private int gender;

    @ApiModelProperty(value = "学号")
    private String studentNo;

    @ApiModelProperty(value = "职工号")
    private String employee;

}
