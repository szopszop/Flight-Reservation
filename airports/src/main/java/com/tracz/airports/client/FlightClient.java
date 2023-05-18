package com.tracz.airports.client;

import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(name = "flights-service", url = "${application.config.flights-url}")
public interface FlightClient {

    @GetMapping("/{iataCode}")
    List<Flight> findAllFlightsByAirportIata(@PathVariable("iataCode") String iataCode);
}
