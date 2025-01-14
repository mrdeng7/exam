package com.exam.dto;

import lombok.Data;

import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/18:14
 * @Version 1.0
 */
@Data
public class QueryPermissionParam {
    private List<Integer> roleIds;
}
