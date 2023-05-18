package com.tracz.airports;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class AirportApp {

	public static void main(String[] args) {
		SpringApplication.run(AirportApp.class, args);
	}

}
