package com.tracz.routes;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class RouteApp {

	public static void main(String[] args) {
		SpringApplication.run(RouteApp.class, args);
	}

}
