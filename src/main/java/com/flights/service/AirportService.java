package com.flights.service;

import com.flights.csv.CsvReader;
import com.flights.csv.CsvReaderFactory;
import com.opencsv.exceptions.CsvException;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service
public class AirportService {

    private final CsvReaderFactory factory;
    private final String airportsCsvFilePath;
    private final int country;
    private final int type;

    public AirportService() {
        this.factory = new CsvReaderFactory();
        this.airportsCsvFilePath = "src/main/resources/airports.csv";
        this.country = 8;
        this.type = 2;
    }

    public List<String[]> getLargeAirports() throws IOException, CsvException {
        CsvReader reader = factory.createReader(airportsCsvFilePath, line -> "large_airport".equals(line[type]));
        return reader.readFile();
    }

    public List<String[]> getAmericanAirports() throws IOException, CsvException {
        CsvReader reader = factory.createReader(airportsCsvFilePath, line -> "US".equals(line[country]));
        return reader.readFile();
    }

}