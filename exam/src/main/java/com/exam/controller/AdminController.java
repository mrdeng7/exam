package com.exam.controller;

import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

/**
 * @className: AdminController
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 17:08
 */
@RestController
@RequestMapping(value = "admin", method = RequestMethod.POST)
@Validated
@Api(value = "管理员通用接口", tags = "管理员通用接口")
public class AdminController {

}