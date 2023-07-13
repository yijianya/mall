package com.yijianya.gateway;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

/**
 * @author YiJianYa
 * @date 2023/7/12  16:59
 */
@SpringBootApplication
@EnableDiscoveryClient // nacos服务注册
public class GatewayApplication {
    public static void main(String[] args) {
        SpringApplication.run(GatewayApplication.class, args);
    }
}
