package com.exam.config.exception;

/**
 * @className: CommonException
 * @description: 自定义异常
 * @author: jone
 * @date: 2024-03-23 13:23
 */
public class CommonException extends Exception{
    /**
     * 自定义状态码
     */
    private Integer status;
    /**
     * 自定义错误信息
     */
    private String errorMsg;

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public String getErrorMsg() {
        return errorMsg;
    }

    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }

    public CommonException(Integer status, String errorMsg) {
        this.status = status;
        this.errorMsg = errorMsg;
    }

    public static CommonException exception_201(String errorMsg){
        return new CommonException(201,errorMsg);
    }



    /**
     * 参数校验失败返回
     * @param errorMsg 异常信息
     * @return
     */
    public static CommonException exception_400(String errorMsg){
        return new CommonException(400,errorMsg);
    }

    /**
     * 拦截器中校验失败返回
     * @param errorMsg 异常信息
     * @return
     */
    public static CommonException exception_401(String errorMsg){
        return new CommonException(401,errorMsg);
    }

    /**
     * 过滤器中校验失败返回
     * @param errorMsg 异常信息
     * @return
     */
    public static CommonException exception_403(String errorMsg){
        return new CommonException(403,errorMsg);
    }

    /**
     * 非数据库异常返回
     * @param errorMsg 异常信息
     * @return
     */
    public static CommonException exception_501(String errorMsg){
        return new CommonException(501,errorMsg);
    }

    /**
     * 数据库异常返回
     * @param errorMsg 异常信息
     * @return
     */
    public static CommonException exception_510(String errorMsg){
        return new CommonException(510,errorMsg);
    }
}
