package com.exam.entity;

import cn.hutool.core.util.StrUtil;
import com.alibaba.fastjson.JSONObject;
import com.exam.entity.CodeConstant;
import io.swagger.annotations.ApiModelProperty;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.util.List;

/**
 * @className: DataPackage
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 13:24
 */
@Data
@EqualsAndHashCode
@AllArgsConstructor
@NoArgsConstructor
public class DataPackage<T> implements Serializable {

    private static final long serialVersionUID = 1L;

    public static final int success=1;

    public static final int exists=0;

    public static final int fail=0;

    public static final String successMessage="请求成功";

    public static final String failMessage="请求失败";

    @ApiModelProperty(value = "1 表示成功 0 表示失败", required = true)
    private int code;
    @ApiModelProperty(value = "返回描述信息")
    private String msg;
    @ApiModelProperty(value = "数据")
    private T data;
    @ApiModelProperty(value = "总数")
    private Long total;
    @ApiModelProperty(value = "总数")
    private Long msgTotal;
    @ApiModelProperty(value = "附加信息")
    private String additionInfo;
    @ApiModelProperty(value = "请求时间")
    private Long requestTime;
    @ApiModelProperty(value = "附加地点及数量信息")
    private List<JSONObject> addressAndNum;

    public DataPackage(int code, String msg, T data, Long total, Long msgTotal){
        if (StrUtil.isBlank(msg)){
            msg = "";
        }
        this.code = code;
        this.msg = msg;
        this.data = data;
        this.total = total;
        this.msgTotal = msgTotal;
    }

    public DataPackage(int code, String msg, T data, Long total){
        if (StrUtil.isBlank(msg)){
            msg = "";
        }
        this.code = code;
        this.msg = msg;
        this.data = data;
        this.total = total;
    }
    public DataPackage(int code, String msg, T data) {
        if (StrUtil.isBlank(msg)){
            msg = "";
        }
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public DataPackage(int code, String msg) {
        if (StrUtil.isBlank(msg)){
            msg = "";
        }
        this.code = code;
        this.msg = msg;
    }

    public static <T> DataPackage<T> success(T data){
        return success(CodeConstant.REQUEST_SUCCESS, data);
    }

    public static <T> DataPackage<T> success(String message, T data){
        return success(CodeConstant.SUCCESS, message, data);
    }
    public static <T> DataPackage<T> success(int code, String message,T data){
        if (StrUtil.isBlank(message)){
            message = "";
        }
        return new DataPackage<>(code, message, data);
    }


    public static <T> DataPackage<T> failed(T data){
        return failed(CodeConstant.REQUEST_FAILED, data);
    }
    public static <T>DataPackage<T> failed(String message,T data){
        return failed(CodeConstant.FAILED,message,data);
    }
    public static <T> DataPackage<T> failed(int code, String message,T data){
        if (StrUtil.isBlank(message)){
            message = "";
        }
        return new DataPackage<>(code, message, data);
    }
}
