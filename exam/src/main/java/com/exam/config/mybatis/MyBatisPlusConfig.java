package com.exam.config.mybatis;

import com.baomidou.mybatisplus.extension.plugins.PaginationInterceptor;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @className: MyBatisPlusConfig
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 13:16
 */
@Configuration
public class MyBatisPlusConfig {
    /**
     * MyBatisPlus拦截器（用于分页）
     */
    @Bean
    public PaginationInterceptor paginationInterceptor() {
        return new PaginationInterceptor();
    }
}
