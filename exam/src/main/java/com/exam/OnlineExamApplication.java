package com.exam;

import cn.hutool.core.lang.Snowflake;
import cn.hutool.core.util.IdUtil;
import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.context.properties.EnableConfigurationProperties;
import org.springframework.cache.annotation.EnableCaching;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.concurrent.ThreadPoolTaskExecutor;

import java.util.concurrent.ThreadPoolExecutor;

/**
 * @className: OnlineExamApplication
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 12:55
 */
@SpringBootApplication
@Slf4j
@EnableScheduling
@EnableConfigurationProperties
@EnableCaching
public class OnlineExamApplication {

    public static void main(String[] args) {
        SpringApplication.run(OnlineExamApplication.class, args);
        log.debug("OnlineExamApplication started successfully.");
    }

    @Bean
    public Snowflake getSnowflake() {
        return IdUtil.getSnowflake(2, 1);
    }

    @Bean("taskExecutor")
    public ThreadPoolTaskExecutor taskExecutor() {
        int curSystemThreads = Runtime.getRuntime().availableProcessors();
        ThreadPoolTaskExecutor taskExecutor = new ThreadPoolTaskExecutor();
        // 设置核心线程数目为虚拟机线程
        taskExecutor.setCorePoolSize(curSystemThreads);
        // 设置最大线程数目为虚拟机线程的2倍
        taskExecutor.setMaxPoolSize(curSystemThreads * 2);
        // 设置队里中最大的任务数为100
        taskExecutor.setQueueCapacity(100);
        // 设置此案城空闲后最大存活时间30秒
        taskExecutor.setKeepAliveSeconds(30);
        // 设置线程前缀
        taskExecutor.setThreadNamePrefix("TaskExecutor-");
        // 设置当线程池任务数满时，不在新线程中执行任务，而是由调用者所在的线程来执行
        taskExecutor.setRejectedExecutionHandler(new ThreadPoolExecutor.CallerRunsPolicy());
        taskExecutor.setWaitForTasksToCompleteOnShutdown(true);
        taskExecutor.setAwaitTerminationSeconds(60);
        taskExecutor.initialize();
        return taskExecutor;
    }
}
