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
    public void init() {

        transferAirportsToDatabase();

    }

    private void transferAirportsToDatabase() {
        List<String[]> filteredAirports = airportService.getFilteredAirports();


        List<Airport> airports = new ArrayList<>();
        int lineNumber = 0;
        for (String[] airportData : filteredAirports) {
            try {
                Airport airport = airportMapper.mapToAirport(airportData);
                airports.add(airport);
            } catch (NumberFormatException e) {
                System.err.printf("Błąd przetwarzania danych w linii %d: %s%n", lineNumber, e.getMessage());
                for (String s :airportData) {
                    System.out.println(s);
                }
                e.printStackTrace();
            }
            lineNumber++;
        }
        airportRepository.saveAll(airports);
    }
}