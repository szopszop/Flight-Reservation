package com.flights.data;

import com.flights.service.AirportService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class DataInitializer {

    @Autowired
    private AirportService airportService;


    @PostConstruct
    public void init() {
        airportService.transferAirportsToDatabase();

    }


}