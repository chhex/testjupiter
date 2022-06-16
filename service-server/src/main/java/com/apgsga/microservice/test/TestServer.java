package com.apgsga.microservice.test;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.servlet.config.annotation.EnableWebMvc;

@SpringBootApplication()
@EnableWebMvc
public class TestServer {

	public static void main(String[] args) {
		SpringApplication.run(TestServer.class, args);
	}

}