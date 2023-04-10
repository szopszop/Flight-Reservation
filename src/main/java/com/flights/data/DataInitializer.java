package com.flights.data;

import com.flights.airline.AirlineService;
import com.flights.airport.AirportService;
import jakarta.annotation.PostConstruct;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class DataInitializer {


    private final AirportService airportService;
    private final AirlineService airlineService;


    @PostConstruct
    public void init() {
        airportService.transferAirportsToDatabase();
        airlineService.transferAirlinesToDatabase();
    }


}