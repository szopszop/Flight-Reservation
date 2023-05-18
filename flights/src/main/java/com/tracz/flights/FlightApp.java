package com.tracz.flights;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class FlightApp {

	public static void main(String[] args) {
		SpringApplication.run(FlightApp.class, args);
	}

}
