package com.flights.data;

import com.flights.entities.Airport;
import com.flights.mapper.AirportMapper;
import com.flights.repositories.AirportRepository;
import com.flights.service.AirportService;
import com.opencsv.exceptions.CsvException;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@Component
public class DataInitializer {

    @Autowired
    private AirportRepository airportRepository;

    @Autowired
    private AirportMapper airportMapper;

    @Autowired
    private AirportService airportService;

    @PostConstruct
    public void init() throws IOException, CsvException {

        List<String[]> largeAirports = airportService.getLargeAirports();

        List<Airport> airports = new ArrayList<>();
        for (String[] airportData : largeAirports) {
            Airport airport = airportMapper.mapToAirport(airportData);
            airports.add(airport);
        }
        airportRepository.saveAll(airports);

    }
}