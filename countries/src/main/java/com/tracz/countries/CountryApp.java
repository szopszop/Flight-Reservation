package com.tracz.countries;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.openfeign.EnableFeignClients;

@EnableFeignClients
@SpringBootApplication
public class CountryApp {

	public static void main(String[] args) {
		SpringApplication.run(CountryApp.class, args);
	}

}
