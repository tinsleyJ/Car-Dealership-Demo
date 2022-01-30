package com.carDealershipDemo.config;

import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@Configuration
@EnableJpaRepositories(basePackages = "com.carDealershipDemo.repository")
@EntityScan(basePackages = "com.carDealershipDemo.entity")
public class ApplicationConfig {

}