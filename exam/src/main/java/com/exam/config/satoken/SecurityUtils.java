package com.exam.config.satoken;

import cn.dev33.satoken.context.SaHolder;
import cn.dev33.satoken.session.SaSession;
import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.util.ObjectUtil;
import com.exam.po.UserBean;
import com.exam.vo.LoginRespVO;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;


public class SecurityUtils {
    public static final String LOGIN_USER_KEY = "exam_user";

    public static SaSession getAuthentication() {
        if (!StpUtil.isLogin()) {
            return null;
        }
        return StpUtil.getTokenSession();
    }

    /**
     * 获取当前登录用户
  */
    public static LoginRespVO getUser() {
        SaSession authentication = getAuthentication();
        if (authentication == null) {
            return null;
        }
        SaSession session = StpUtil.getTokenSession();
        if (ObjectUtil.isNull(session)) {
            return null;
        }
        LoginRespVO loginUser = (LoginRespVO) session.get(LOGIN_USER_KEY);
        SaHolder.getStorage().set(LOGIN_USER_KEY, loginUser);
        return loginUser;
    }


    public static String getPhone(){
        LoginRespVO user = getUser();
        if (user == null){
            return null;
        }
        return user.getPhone();
    }

    /**
     * 判断是否为内部接口调用, 解决 satoken 的 “非 web 上下文无法获取Request” 问题
     * @return  true: 非内部接口调用
     */
    public static Boolean isWebRequest() {
        ServletRequestAttributes servletRequestAttributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        return ObjectUtil.isNotEmpty(servletRequestAttributes);
    }

}
