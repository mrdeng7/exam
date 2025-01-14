package com.exam.controller;

import cn.hutool.core.util.StrUtil;
import com.exam.config.exception.CommonException;
import com.exam.dto.*;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.entity.DataWithNum;
import com.exam.po.UserBean;
import com.exam.service.IUserManagerService;
import com.exam.vo.TouristResp;
import com.exam.vo.UserResp;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.List;

/**
 * @className: StudentController
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 13:32
 */
@RestController
@RequestMapping(value = "user", method = RequestMethod.POST)
@Validated
@Api(value = "用户管理通用接口", tags = "用户管理通用接口")
public class UserManagerController {
    @Resource
    IUserManagerService userManagerService;

    @ApiOperation("用户模块-游客注册")
    @PostMapping("touristRegistration")
    public DataPackage<String> touristRegistration(@RequestBody @Validated AddTouristRegistrationParam param) throws CommonException {
        String password = userManagerService.touristRegistration(param);
        return StrUtil.isNotBlank(password) ? DataPackage.success("新增用户成功", password) : DataPackage.failed("新增失败");
    }

    @ApiOperation("用户模块-查询所有游客")
    @PostMapping("queryTouristInfo")
    public DataPackage<List<TouristResp>> queryTouristInfo(@RequestBody @Validated QueryUserParam param){
        DataWithNum<List<TouristResp>> dataWithNum = userManagerService.queryTouristInfo(param);
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, dataWithNum.getData(), dataWithNum.getTotal());
    }

    @ApiOperation("用户模块-新增用户")
    @PostMapping("add")
    public DataPackage<String> addUser(@RequestBody @Validated AddUserParam param) throws CommonException {
        String password = userManagerService.addUser(param);
        return StrUtil.isNotBlank(password) ? DataPackage.success("新增用户成功", password) : DataPackage.failed("新增失败");
    }


    @ApiOperation("用户模块-删除用户（物理删除、彻底删除该用户信息）")
    @PostMapping("delete/{userId}")
    public DataPackage<Boolean> deleteUser(@PathVariable("userId") String userId){
        return userManagerService.deleteUserAllInfo(userId)?DataPackage.success(true) : DataPackage.failed(false);
    }

    /**
     * 普通角色：限制只能修改自己的信息
     * 管理员：无任何限制
     */
    @ApiOperation("用户模块-修改用户")
    @PostMapping("edit")
    public DataPackage<Boolean> editUser(@RequestBody @Validated UpdateUserInfoParam param) throws CommonException {
        return userManagerService.updateUserInfo(param)? DataPackage.success(true) : DataPackage.failed(false);
    }

    @ApiOperation("用户模块-重置用户密码")
    @PostMapping("resetPassword/{userId}")
    public DataPackage<String> resetPassword(@PathVariable("userId") String userId) throws CommonException {
        String result = userManagerService.resetPassword(userId);
        return StrUtil.isNotBlank(result) ?
                DataPackage.success("重置密码成功", result) : DataPackage.failed("重置密码失败");
    }

    @ApiOperation("用户模块-修改用户状态，0-启用，1-过期，2-冻结")
    @PostMapping("/changeStatus")
    public DataPackage<Boolean> changeStatus(@RequestBody @Validated UpdateUserStatusParam param) throws CommonException {
        return userManagerService.changeStatus(param) ? DataPackage.success("修改用户状态成功", true) : DataPackage.failed("修改状态失败", false);
    }



    @ApiOperation("用户模块-修改用户密码")
    @PostMapping("/updatePassword")
    public DataPackage<Boolean> updatePassword(@RequestBody @Validated UpdateUserPsdParam param) throws CommonException {
        return userManagerService.updatePassword(param) ? DataPackage.success("修改用户密码成功", true) : DataPackage.failed("更新密码失败", false);
    }

}
