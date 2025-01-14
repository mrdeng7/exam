package com.exam.controller;

import cn.dev33.satoken.annotation.SaCheckLogin;
import cn.dev33.satoken.annotation.SaCheckRole;
import cn.dev33.satoken.annotation.SaIgnore;
import cn.dev33.satoken.annotation.SaMode;
import cn.dev33.satoken.stp.StpUtil;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *@className: IndexController
 *@description: TODO
 *@author: jone
 *@date: 2024-03-25 20:17
 */
@Controller
@RequestMapping(method = RequestMethod.GET)
@Api(value = "html页面跳转", tags = "html页面跳转")
public class IndexController {

    @RequestMapping("/index.html")
    @ApiOperation(value = "首页", notes = "首页")
    public String homepage() {
        return "index";
    }


    @RequestMapping("/login.html")
    @ApiOperation(value = "登录页面", notes = "登录页面")
    public String login() {
        return "login";
    }

    @RequestMapping("/question-bank.html")
    @ApiOperation(value = "练习题页面", notes = "练习题页面")
    public String questionbank() {
        return "question-bank";
    }

    @RequestMapping("/exam-list.html")
    @ApiOperation(value = "考试中心", notes = "考试中心")
    public String examList() {
        return "exam-list";
    }

    @RequestMapping("/examination.html")
    public String examination() {
        return "examination";
    }


    @RequestMapping("/test-paper.html")
    public String testpaper() {
        return "test-paper";
    }

    @RequestMapping("/review-question.html")
    public String reviewquestion() {
        return "review-question";
    }

    @RequestMapping("/manage.html")
    @ApiOperation(value = "管理页面", notes = "管理页面")
    public String manage() {
        return "manage";
    }

    @RequestMapping("/question-manage.html")
    @ApiOperation(value = "题库管理页面", notes = "题库管理页面")
    public String questionmanage() {
        return "question-manage";
    }

    @RequestMapping("/kps-manage.html")
    @ApiOperation(value = "知识点管理页面", notes = "知识点管理页面")
    public String kpsmanage() {
        return "kps-manage";
    }


    @RequestMapping("/user-manage.html")
    @ApiOperation(value = "用戶管理页面", notes = "用戶管理页面")
    public String usermanage() {
        return "user-manage";
    }

    @RequestMapping("/module-manage.html")
    @ApiOperation(value = "模块管理页面", notes = "模块管理页面")
    public String modulemanage() {
        return "module-manage";
    }

    @RequestMapping("/marking-paper.html")
    @ApiOperation(value = "阅卷页面", notes = "阅卷页面")
    public String markingpaper() {
        return "marking-paper";
    }
    @RequestMapping("/paper-list.html")
    @ApiOperation(value = "阅卷页面", notes = "阅卷页面")
    public String paperlist() {
        return "paper-list";
    }
}
