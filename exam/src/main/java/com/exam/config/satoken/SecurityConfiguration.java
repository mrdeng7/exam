package com.exam.config.satoken;

import cn.dev33.satoken.context.SaHolder;
import cn.dev33.satoken.context.model.SaRequest;
import cn.dev33.satoken.interceptor.SaInterceptor;
import cn.dev33.satoken.router.SaRouter;
import cn.dev33.satoken.stp.StpUtil;
import cn.hutool.core.collection.CollectionUtil;
import cn.hutool.core.util.ObjectUtil;
import cn.hutool.core.util.StrUtil;
import com.google.common.collect.Sets;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.InterceptorRegistry;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Configuration
public class SecurityConfiguration implements WebMvcConfigurer {

    @Value("${sa-token.token-name}")
    String tokenName;

    //@Value("${sa-token.token-prefix}")
    //String tokenPrefix;

    @Value("${sa-token.timeout}")
    private Long tokenTimeOut;

    // 白名单
    private static final Set<String> whiteLists = Sets.newHashSet(
            "/swagger-ui.html", "/swagger-ui/*", "/swagger-resources/**", "/v2/api-docs",
            "/profile/**",
            "/csrf","/error","/static/**","/favicon.ico",
            "/webjars/**","/koTime/**",
            "/user/**",
            "/student/**", "/school/**",
            "/login/doLogin","/login/logout",
            "/index.html","/login.html"/*,"/*.html"*/);
    /**
     * 注册sa-token的拦截器
     */
    @Override
    public void addInterceptors(InterceptorRegistry registry) {
        registry.addInterceptor(new SaInterceptor(handle -> {
            SaRouter.match("/manage.html").notMatch(new ArrayList<>(whiteLists)).check(r -> StpUtil.checkRoleOr("admin","teacher"));
            SaRouter.match("/question-bank.html","/exam-list.html","/examination.html","/test-paper.html","/review-question.html")
                    .notMatch(new ArrayList<>(whiteLists)).check(r -> {
                        checkLogin();
                        StpUtil.checkRoleOr("admin","teacher","student");
                    });

                    SaRouter
//                            .notMatch("/**")// 暂时放开所有接口
                            .match("/**")// 拦截的 path 列表，可以写多个 */
                            .notMatch(new ArrayList<>(whiteLists))// 无需进行鉴权的
                            // 检查是否登录，是否有token，以及token的有效性
                            .check(r -> requestInterception(SaHolder.getRequest()))
                            //.check(r -> checkLogin())
                    ;

                }))
                .addPathPatterns("/**")
        ;
    }


    /**
     * 访问资源的拦截，小程序 直接放行
     * @param request
     * @return
     */
    public Boolean requestInterception(SaRequest request){
        String sign = request.getHeader("Sign");
        // 小程序的 无需进行接口鉴权
        if (StrUtil.isNotBlank(sign) && ObjectUtil.equal(sign, "applet")){
            return true;
        }
        checkLogin();
        return true;
    }

    /**
     * 检查是否登录，是否有token，以及token的有效性
     */
    public void checkLogin(){
        StpUtil.checkLogin();

        // 每次进行操作时  手动续签，防止用户在操作过程中由于token到期，导致无法操作系统
        long tokenTimeout = StpUtil.getTokenTimeout();
        // 调整token临近失效时间时 才手动续签，防止频繁续签
        if (tokenTimeout != -1 && tokenTimeout < 1200){
            StpUtil.renewTimeout(tokenTimeOut);
        }
    }

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry){
        // 静态资源访问路径
        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");

        //swagger访问配置
        registry.addResourceHandler("swagger-ui.html").addResourceLocations("classpath:/META-INF/resources/");
        registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");

    }

    /**
     * 允许任何域进行跨域请求
     * @param registry
     */
    @Override
    public void addCorsMappings(CorsRegistry registry) {
        registry.addMapping("/**") // 对所有路径应用跨域配置
                .allowedOrigins("*") // 允许任何域进行跨域访问
                .allowedMethods("GET", "POST", "PUT", "DELETE") // 允许的请求方法
                .allowedHeaders("*") // 允许的请求头
                .maxAge(3600)
                .allowCredentials(true); // 是否允许发送凭据
    }
}
