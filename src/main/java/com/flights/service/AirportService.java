package com.flights.service;

import com.flights.csv.CsvReader;
import com.flights.csv.DataFilter;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class AirportService {

    private final CsvReader csvReader;
    DataFilter dataFilter;
    public Set<String> getIATACodes() {
        String airportsCsvFilePath = "src/main/resources/humData/airports-humData.csv";
        List<String[]> unfilteredAirportsData = csvReader.readFile(airportsCsvFilePath);
        int column = 13;
        return dataFilter.getKeys(unfilteredAirportsData, column);
    }

    public List<String[]> getAllAirportsOpenFlight() {
        String airportsCsvFilePath = "src/main/resources/openFlights/airports-openFlights.csv";
        return csvReader.readFile(airportsCsvFilePath);
    }

    public List<String[]> filterAirports() {
        List<String[]> allAirportsFromOpenData = getAllAirportsOpenFlight();
        Set<String> IATACodes = getIATACodes();
        return allAirportsFromOpenData.stream()
                .filter(row -> IATACodes.contains(row[4]))
                .collect(Collectors.toList());
    }




}