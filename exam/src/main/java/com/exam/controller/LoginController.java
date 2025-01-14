package com.exam.controller;

import com.exam.dto.DoLoginParam;
import com.exam.entity.DataPackage;
import com.exam.entity.CodeConstant;
import com.exam.service.impl.LoginServiceImpl;
import com.exam.vo.LoginRespVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

/**
 * @className: LoginController
 * @description: 登录相关api
 * @author: jone
 * @date: 2024-03-23 13:46
 */
@Api(value = "登录相关接口", tags = "登录相关接口")
@RestController
@RequestMapping(value = "user")
@Slf4j
public class LoginController {
    @Resource
    LoginServiceImpl loginService;

    @RequestMapping(value = "doLogin", method = RequestMethod.POST)
    @ApiOperation(value = "登录接口", notes = "登录接口")
    public DataPackage<LoginRespVO> doLogin(@RequestBody DoLoginParam param, HttpServletRequest req) {
        return loginService.doLogin(param, req);
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public DataPackage<Boolean> logout() {
        loginService.logout();
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, true);
    }
}
