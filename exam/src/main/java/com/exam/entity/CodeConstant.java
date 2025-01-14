package com.exam.entity;

/**
 * @className: CodeConstant
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 13:14
 */
public final class CodeConstant {
    /**
     * 常用数字状态码
     */
    public static final int STATUS_INT_0 = 0;
    public static final int STATUS_INT_1 = 1;
    public static final int STATUS_INT_2 = 2;
    public static final int STATUS_INT_3 = 3;
    public static final int STATUS_INT_4 = 4;
    public static final int STATUS_INT_5 = 5;
    public static final int STATUS_INT_6 = 6;
    public static final int STATUS_INT_7 = 7;
    public static final int STATUS_INT_8 = 8;
    public static final int STATUS_INT_9 = 9;
    public static final int STATUS_INT_10 = 10;
    public static final int STATUS_INT_11 = 11;


    /**
     * 请求成功状态码
     */
    public static final int SUCCESS = 1;

    /**
     * 请求失败状态码
     */
    public static final int FAILED = 0;

    /**
     * 登录过期状态码
     */
    public static final int OVERDUE  = -1;
    /**
     * 账户过期状态码
     */
    public static final int EXPIRE  = -2;
    /**
     * 账户禁用状态码
     */
    public static final int DISABLE  = -3;
    /**
     * 已存在
     */
    public static final int EXIST  = -4;

    /**
     * 用户名已存在
     */
    public static final String USERNAME_ALREADY_EXISTS  = "用户已存在";
    public static final String ACCOUNT_NOT_EXIST = "账户不存在";
    public static final String PASSWORD_ERROR = "密码错误";
    public static final String UNKOWN_USER = "未知用户";
    /**
     * 登录成功
     */
    public static final String LOGIN_SUCCESS  = "登录成功";

    /**
     * 请求成功返回信息
     */
    public static final String REQUEST_SUCCESS = "request success";

    /**
     * 请求异常返回信息
     */
    public static final String REQUEST_FAILED = "request failed";

    /**
     * 服务调用失败返回信息
     */
    public static final String SERVICE_FAILED_MSG = "service failed";

    /**
     * 参数存在异常返回信息
     */
    public static final String PARAMETER_ABNORMAL = "Parameter abnormal";

    /**
     * 登录过期描述
     */
    public static final String OVERDUE_MSG = "登录过期或未登录";
    /**
     * 账户过期描述
     */
    public static final String EXPIRETIME_MSG = "登录账户已过期";
    /**
     * 账户禁用描述
     */
    public static final String DISABLELOGIN_MSG = "登录账户已被禁用";


    /**
     * 校验正整数正则
     */
    public static final String NUMBER_REGEX = "^-[0-9]+$|^[0-9]+$";
    /**
     * 字母+数字
     */
    public static final String NUMBER_EN_REGEX = "^[a-zA-Z0-9]+$";
    public static final String ZH_REGEX = "^[\\u4E00-\\u9FA5]+$";
    public static final String EN_REGEX = "^[a-zA-Z\\s]+$";

    /**
     * 设置的数据常量data
     */
    public static final String CONSTANT_DATA = "data";
    /**
     * 设置的数据常量total
     */
    public static final String CONSTANT_TOTAL = "total";


    public static final String SAME_DATA = "已有重复数据！";


    public static final Long HALF_AN_HOUR = 30 * 1000 * 60L;



    public static final String QUESTION_NOT_EXIST = "题目不存在";
}
