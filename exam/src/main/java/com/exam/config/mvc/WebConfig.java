//package com.exam.config.mvc;
//
//import org.springframework.context.annotation.Configuration;
//import org.springframework.web.servlet.config.annotation.CorsRegistry;
//import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurationSupport;
//import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
//
///**
// * @author jone
// * @Description 或者  implements WebMvcConfigurer
// * @Date 2024/03/27/23:49
// * @Version 1.0
// */
////@Configuration
//public class WebConfig extends WebMvcConfigurationSupport {
//    @Override
//    protected void addResourceHandlers(ResourceHandlerRegistry registry){
//        // 静态资源访问路径
//        registry.addResourceHandler("/static/**").addResourceLocations("classpath:/static/");
//
//        //swagger访问配置
//        registry.addResourceHandler("swagger-ui.html").addResourceLocations("classpath:/META-INF/resources/");
//        registry.addResourceHandler("/webjars/**").addResourceLocations("classpath:/META-INF/resources/webjars/");
//
//    }
//
//    /**
//     * 允许任何域进行跨域请求
//     * @param registry
//     */
//    @Override
//    public void addCorsMappings(CorsRegistry registry) {
//        registry.addMapping("/**") // 对所有路径应用跨域配置
//                .allowedOrigins("*") // 允许任何域进行跨域访问
//                .allowedMethods("GET", "POST", "PUT", "DELETE") // 允许的请求方法
//                .allowedHeaders("*") // 允许的请求头
//                .maxAge(3600)
//                .allowCredentials(true); // 是否允许发送凭据
//    }
//}
