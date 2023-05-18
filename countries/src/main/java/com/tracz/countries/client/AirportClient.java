package com.tracz.countries.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(name = "airport-service", url = "${application.config.airports-url}")
public interface AirportClient {

    @GetMapping("/{country-id}")
    List<Airport> findAllAirportsByCountryId(@PathVariable("country-id") Long countryId);

}
