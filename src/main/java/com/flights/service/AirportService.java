package com.flights.service;

import com.flights.csv.CsvReader;
import com.flights.csv.CsvReaderFactory;
import com.flights.csv.DataFilter;
import com.flights.csv.DataFilterFactory;
import com.opencsv.exceptions.CsvException;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

@Service
@AllArgsConstructor
public class AirportService {

    private final CsvReaderFactory csvReaderFactory;
    private final DataFilterFactory dataFilterFactory;

    public List<String[]> getLargeAirports() {
        CsvReader csvReader = csvReaderFactory.createReader();
        DataFilter dataFilter = dataFilterFactory.createFilter();
        String airportsCsvFilePath = "src/main/resources/humData/airports-humData.csv";

        List<String[]> unfilteredAirportsData = csvReader.readFile(airportsCsvFilePath);
        int row = 2;
        String filter = "large_airport";
        return dataFilter.doFilter(unfilteredAirportsData, row, filter);
    }



}