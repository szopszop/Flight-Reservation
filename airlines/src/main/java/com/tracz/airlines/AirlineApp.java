package com.tracz.airlines;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class AirlineApp {

	public static void main(String[] args) {
		SpringApplication.run(AirlineApp.class, args);
	}

}
