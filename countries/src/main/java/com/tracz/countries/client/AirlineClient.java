package com.tracz.countries.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(name = "airline-service", url = "${application.config.airlines-url}")
public interface AirlineClient {

    @GetMapping("/countries/{country-id}")
    List<Airline> findAllAirlinesByCountryId(@PathVariable("country-id") Long countryId);

}