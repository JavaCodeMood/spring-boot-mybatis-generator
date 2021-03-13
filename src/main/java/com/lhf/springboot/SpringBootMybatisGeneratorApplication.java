package com.lhf.springboot;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.lhf.springboot.dao")
public class SpringBootMybatisGeneratorApplication {

	public static void main(String[] args) {
		SpringApplication.run(SpringBootMybatisGeneratorApplication.class, args);
	}

}
