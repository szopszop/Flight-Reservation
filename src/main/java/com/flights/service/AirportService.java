package com.flights.service;

import com.flights.csv.CsvReader;
import com.flights.csv.DataFilter;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;

@Service
@AllArgsConstructor
public class AirportService {

    private final CsvReader csvReader;
    private final DataFilter dataFilter;


    public List<String[]> getLargeAirports() {
        String airportsCsvFilePath = "src/main/resources/humData/airports-humData.csv";
        List<String[]> unfilteredAirportsData = csvReader.readFile(airportsCsvFilePath);
        int row = 2;
        String filter = "large_airport";
        return dataFilter.doFilter(unfilteredAirportsData, row, filter);
    }

    public Set<String> getIATACodes() {
        List<String[]> largeAirports = getLargeAirports();
        int column = 13;
        return dataFilter.getKeys(largeAirports, column);
    }

    public List<String[]> getAllAirportsOpenFlight() {
        String airportsCsvFilePath = "src/main/resources/openFlights/airports-openFlights.csv";
        return csvReader.readFile(airportsCsvFilePath);
    }

    public List<String[]> getFilteredAirports() {
        List<String[]> allAirportsFromOpenData = getAllAirportsOpenFlight();
        Set<String> IATACodes = getIATACodes();
        int column = 4;
        return dataFilter.doFilter(allAirportsFromOpenData, column, IATACodes);
    }




}