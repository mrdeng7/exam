package com.exam.service.impl;

import cn.dev33.satoken.secure.BCrypt;
import cn.dev33.satoken.stp.SaLoginModel;
import cn.dev33.satoken.stp.StpInterface;
import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.exam.config.satoken.SecurityUtils;
import com.exam.dao.LoginDao;
import com.exam.dto.DoLoginParam;
import com.exam.dto.UpdateUserStatusParam;
import com.exam.po.*;
import com.exam.entity.CodeConstant;
import com.exam.entity.DataPackage;
import com.exam.service.IRbacService;
import com.exam.service.IStudentService;
import com.exam.service.ITeacherService;
import com.exam.service.IUserManagerService;
import com.exam.util.ConversionBeanStructureUtil;
import com.exam.vo.LoginRespVO;
import com.exam.vo.PermissionResp;
import com.exam.vo.RolePermissionResp;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

/**
 * @className: LoginServiceImpl
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 13:52
 */
@Service
public class LoginServiceImpl implements StpInterface {

    @Value("${sa-token.timeout}")
    private Long tokenTimeOut;
    @Value("${sa-token.active-timeout}")
    private Long tokenActiveTimeOut;

    public static final String LOGIN_USER_KEY = "exam_user";


    @Resource
    IUserManagerService userManagerService;
    @Resource
    IStudentService studentService;
    @Resource
    ITeacherService teacherService;
    @Resource
    IRbacService rbacService;
    @Resource
    LoginDao loginDao;


    /**
     * 登录
     *
     * @param param 登录参数
     * @param req   请求
     * @return 登录结果
     */
    public DataPackage<LoginRespVO> doLogin(DoLoginParam param, HttpServletRequest req) {
        String phone = param.getPhone();
        if (StrUtil.isBlank(phone) || phone.length() != CodeConstant.STATUS_INT_11) {
            return new DataPackage<>(CodeConstant.FAILED, CodeConstant.REQUEST_FAILED, null);
        }
        String password = param.getPassword();

        Integer schoolId = param.getSchoolId();
        // 根据手机号 + 学校id 查询用户信息
        UserBean userInfo = loginDao.findUserByPhoneAndSchoolId(phone, schoolId);
        // 用户不存在
        if (userInfo == null){
            return new DataPackage<>(CodeConstant.DISABLE, CodeConstant.ACCOUNT_NOT_EXIST, null);
        }
        // 比较密码
        String passwordFromDb = userInfo.getPassword();
        boolean checkpw = BCrypt.checkpw(password, passwordFromDb);
        // 密码对不上
        if (!checkpw){
            return new DataPackage<>(CodeConstant.DISABLE, CodeConstant.PASSWORD_ERROR, null);
        }
        // 校验账号状态,判断用户是否被禁用、是否过期
        Integer loginStatus = userInfo.getStatus();
        if (loginStatus != 0) {
            return new DataPackage<>(CodeConstant.DISABLE, CodeConstant.DISABLELOGIN_MSG, null);
        }
        // 判断是否失效
        Long expireTime = userInfo.getExpireTime();
        if (System.currentTimeMillis() > expireTime){
            UpdateUserStatusParam updateUserStatusParam = new UpdateUserStatusParam();
            updateUserStatusParam.setUserId(userInfo.getUserId());
            updateUserStatusParam.setStatus(1);
            userManagerService.changeStatus(updateUserStatusParam);
            return new DataPackage<>(CodeConstant.DISABLE, CodeConstant.DISABLELOGIN_MSG, null);
        }

        // 构造返回值
        LoginRespVO loginRespVO = null;

        Integer userId = userInfo.getUserId();
        // 账号类型：学生？老师？
        Integer type = userInfo.getType();
        if (ObjectUtil.equal(type, 1)){
            StudentBean studentBean = studentService.getOne(new QueryWrapper<StudentBean>().lambda().eq(StudentBean::getUserId, userId));
            loginRespVO = ConversionBeanStructureUtil.conversionStudent2LoginRespVO(studentBean);
        } else if (ObjectUtil.equal(type, 2)){
            TeacherBean teacherBean = teacherService.getOne(new QueryWrapper<TeacherBean>().lambda().eq(TeacherBean::getUserId, userId));
            loginRespVO = ConversionBeanStructureUtil.conversionTeacher2LoginRespVO(teacherBean);
        } else {
            // 游客
            loginRespVO = new LoginRespVO();
            loginRespVO.setUserType("3");
            loginRespVO.setUserName("游客");
        }

        //loginRespVO 为空，证明没有获取到学生or老师的基本信息
        if (loginRespVO == null){
            return new DataPackage<>(CodeConstant.DISABLE, CodeConstant.UNKOWN_USER, null);
        }
        loginRespVO.setSchoolId(schoolId);
        loginRespVO.setPhone(phone);
        loginRespVO.setExpireTime(expireTime);
        loginRespVO.setStatus(userInfo.getStatus());
        loginRespVO.setAllowOtherLogin(userInfo.getAllowOtherLogin());
        loginRespVO.setUserId(userInfo.getUserId());
        // 获取账号的权限信息
        List<RoleBean> allUserRoles = rbacService.findAllUserRoles(userId);
        if (CollectionUtil.isNotEmpty(allUserRoles)){
            loginRespVO.setRoleNames(allUserRoles.stream().map(RoleBean::getRoleName).collect(Collectors.toList()));

            List<Integer> roleIds = allUserRoles.stream().map(RoleBean::getRoleId).distinct().collect(Collectors.toList());
            List<PermissionResp> allRolePermissions = rbacService.findAllPermissionsByRoleIds(roleIds);
            if (CollectionUtil.isNotEmpty(allRolePermissions)){
                loginRespVO.setPermissionNames(allRolePermissions.stream().map(PermissionResp::getPermissionName).collect(Collectors.toList()));
            }
        }

        // 创建 Token 令牌，
        login(loginRespVO);
        String token = StpUtil.getTokenValue();
        loginRespVO.setToken(token);

        // 返回登录成功信息
        return new DataPackage<>(CodeConstant.SUCCESS, CodeConstant.REQUEST_SUCCESS, loginRespVO);
    }

    /**
     * 登录
     * @author jone
     * @date 2024/2/26 15:31
     * @param loginUser     登录信息
     */
    void login(LoginRespVO loginUser) {
        if (loginUser == null){
            return;
        }
        // 只能单设备登录， 尝试从缓存中获取 token， 将旧的踢下线
        Integer allowOtherLogin = loginUser.getAllowOtherLogin();
        String token = null;
        if (allowOtherLogin == null || allowOtherLogin == 0){
            List<String> tokenValueListByLoginId = StpUtil.getTokenValueListByLoginId(loginUser.getPhone());
            // 最多只会出现 token 为 1 个 的情况
            if (CollectionUtil.isNotEmpty(tokenValueListByLoginId)){
                token = tokenValueListByLoginId.get(0);
            }

            // 将旧的踢下线
            if (StrUtil.isNotBlank(token)){
                StpUtil.replaced(loginUser.getPhone(), null);
                token = null;
                //StpUtil.logoutByTokenValue(token);
            }
        }

        SaLoginModel model = new SaLoginModel();
        model.setTimeout(tokenTimeOut).setActiveTimeout(tokenActiveTimeOut);

        // token 为空，证明没有登录过
        if (StrUtil.isBlank(token)){
            StpUtil.login(loginUser.getPhone(), model);
        }
        else {
            // 手动续签 以及 续期
            model.setToken(token);
            StpUtil.setTokenValue(token, model);
            StpUtil.renewTimeout(tokenTimeOut);
        }
        StpUtil.getTokenSession().set(LOGIN_USER_KEY, loginUser);
    }


    /**
     * 返回指定账号id所拥有的权限码集合
     * @param loginId  账号id
     * @param loginType 账号类型
     * @return
     */
    @Override
    public List<String> getPermissionList(Object loginId, String loginType) {
        LoginRespVO loginUser = SecurityUtils.getUser();
        if (loginUser == null){
            return Collections.emptyList();
        }
        return loginUser.getPermissionNames();
    }

    /**
     * 返回指定账号id所拥有的角色标识集合
     * @param loginId  账号id
     * @param loginType 账号类型
     * @return
     */
    @Override
    public List<String> getRoleList(Object loginId, String loginType) {
        LoginRespVO loginUser = SecurityUtils.getUser();
        if (loginUser == null){
            return Collections.emptyList();
        }
        return loginUser.getRoleNames();
    }

    /**
     * 退出登录
     */
    public void logout() {
        LoginRespVO loginUser = SecurityUtils.getUser();
        if (loginUser != null) {
            StpUtil.logout();
        }
    }
}
