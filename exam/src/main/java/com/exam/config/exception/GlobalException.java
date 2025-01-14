package com.exam.config.exception;

import cn.dev33.satoken.exception.NotLoginException;
import cn.dev33.satoken.exception.NotRoleException;
import cn.dev33.satoken.exception.SameTokenInvalidException;
import com.alibaba.fastjson.JSONObject;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestControllerAdvice;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.validation.ConstraintViolationException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * @className: GlobalException
 * @description: 全局异常处理
 * @author: jone
 * @date: 2024-03-23 13:21
 */
@Slf4j
@RestControllerAdvice
public class GlobalException {

    @ExceptionHandler(Exception.class)
    @ResponseBody
    public DataPackage exceptionHandler(Exception e){
        e.printStackTrace();
        return new DataPackage(CodeConstant.FAILED,e.getMessage());
    }

    @ExceptionHandler(CommonException.class)
    @ResponseBody
    public DataPackage exceptionHandler(CommonException e){
        return new DataPackage(e.getStatus(),e.getErrorMsg());
    }
    /**
     * 方法参数校验
     */
    @ExceptionHandler(ConstraintViolationException.class)
    public DataPackage<String> handleConstraintViolationException(ConstraintViolationException e) {
        return new DataPackage(CodeConstant.FAILED,e.getMessage());
    }
    /**
     * 方法参数校验
     */
    @ExceptionHandler(MethodArgumentNotValidException.class)
    public DataPackage<String> handleMethodArgumentNotValidException(MethodArgumentNotValidException e) {
        BindingResult br = e.getBindingResult();
        if (br.hasFieldErrors()){
            List<FieldError> fieldErrors = br.getFieldErrors();
            List<String> errors = new ArrayList<>(fieldErrors.size());
            for (FieldError error : fieldErrors) {
                errors.add(error.getField() + ":" + error.getDefaultMessage());
            }
            return new DataPackage(CodeConstant.FAILED, errors.toString());
        }

        return new DataPackage(CodeConstant.FAILED, "参数校验错误");
    }

    /**
     * 处理satoken登录异常的
     * @author jone
     * @date 2024/2/26 19:20
     * @param nle
     * @return DataPackage<String>
     */
    @ExceptionHandler(NotLoginException.class)
    public void handleNotLoginException(NotLoginException nle, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String requestUri = request.getRequestURI();
        log.error("请求地址'{}',认证失败'{}',无法访问系统资源", requestUri, nle.getMessage());
        String message = "";
        int code = HttpServletResponse.SC_UNAUTHORIZED;
        if (nle.getType().equals(NotLoginException.NOT_TOKEN)) {
            message = "未提供Token";
        } else if (nle.getType().equals(NotLoginException.INVALID_TOKEN)) {
            message = "未提供有效的Token";
        } else if (nle.getType().equals(NotLoginException.TOKEN_TIMEOUT)) {
            message = "登录信息已过期，请重新登录";
        } else if (nle.getType().equals(NotLoginException.BE_REPLACED)) {
            message = "您的账户已在另一台设备上登录，如非本人操作，请立即修改密码";
            code = HttpServletResponse.SC_FORBIDDEN;
        } else if (nle.getType().equals(NotLoginException.KICK_OUT)) {
            message = "已被系统强制下线";
        } else {
            message = "当前会话未登录";
        }
        JSONObject jsonObject = new JSONObject().fluentPut("code", code).fluentPut("msg", message);
        // 重定向到 登录页面
        response.sendRedirect("/login.html");
        //return ResponseEntity.status(code).body(JSONObject.toJSONString(jsonObject));
    }

    /**
     * 无效认证
     */
    @ExceptionHandler(SameTokenInvalidException.class)
    public void  handleSameTokenInvalidException(SameTokenInvalidException e, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String requestUri = request.getRequestURI();
        String message = "";
        int code = HttpServletResponse.SC_UNAUTHORIZED;
        message = e.getMessage();
        log.error("请求地址'{}',认证失败'{}',无法访问系统资源", requestUri, e.getMessage());
        JSONObject jsonObject = new JSONObject().fluentPut("code", code).fluentPut("msg", message);
        // 重定向到 登录页面
        response.sendRedirect("/login.html");

        //return ResponseEntity.status(code).body(JSONObject.toJSONString(jsonObject));
    }

    /**
     * 无效认证
     */
    @ExceptionHandler(NotRoleException.class)
    public void  handleRoleInvalidException(NotRoleException e, HttpServletRequest request, HttpServletResponse response) throws IOException {
        String requestUri = request.getRequestURI();
        String message = "";
        int code = HttpServletResponse.SC_UNAUTHORIZED;
        message = e.getMessage();
        log.error("请求地址'{}',认证失败'{}',无法访问系统资源", requestUri, e.getMessage());
        JSONObject jsonObject = new JSONObject().fluentPut("code", code).fluentPut("msg", message);
        // 重定向到 登录页面
        response.sendRedirect("/index.html");

        //return ResponseEntity.status(code).body(JSONObject.toJSONString(jsonObject));
    }
}