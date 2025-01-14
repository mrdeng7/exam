package com.exam.config.redis;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

/**
 * @className: RedisConfig
 * @description: TODO
 * @author: jone
 * @date: 2024-03-23 13:20
 */
//@Configuration
public class RedisConfig {
    //@Bean
    public TimeExpiredPoolCache getTimeExpiredPoolCache(){
        return TimeExpiredPoolCache.getInstance();
    }
}
