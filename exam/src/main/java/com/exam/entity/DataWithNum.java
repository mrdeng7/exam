package com.exam.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

/**
 * @author jone
 * @Description TODO
 * @Date 2024/03/26/16:57
 * @Version 1.0
 */
@Data
@AllArgsConstructor
@NoArgsConstructor
public class DataWithNum<T> {
    T data;
    Long total;
}
