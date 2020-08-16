package com.zxh.crawlerpersistent;

import com.alibaba.dubbo.config.spring.context.annotation.EnableDubbo;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@EnableDubbo
@SpringBootApplication
@MapperScan("com.zxh.crawlerpersistent.dao")
public class CrawlerPersistentApplication {

    public static void main(String[] args) {
        SpringApplication.run(CrawlerPersistentApplication.class, args);
    }

}
