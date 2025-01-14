package com.exam.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/17:41
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class RolePermissionEntity implements Serializable {
    private static final long serialVersionUID = -79690593849142827L;
    private Long roleId;
    private Long permissionId;
    private String permissionName;
}
