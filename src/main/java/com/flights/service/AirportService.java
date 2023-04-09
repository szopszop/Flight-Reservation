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
    private static final String HUM_DATA_FILE_PATH = "src/main/resources/humData/airports-humData.csv";
    private static final String OPEN_FLIGHTS_FILE_PATH = "src/main/resources/openFlights/airports-openFlights.csv";
    private static final int LARGE_AIRPORT_COLUMN = 2;
    private static final int IATA_CODE_COLUMN = 4;
    private static final int KEY_COLUMN = 13;

    private List<String[]> importAirportDataFromHumData() {
        return csvReader.readFile(HUM_DATA_FILE_PATH);
    }

    public List<String[]> filterLargeAirports() {
        List<String[]> unfilteredAirportsData = importAirportDataFromHumData();
        String filter = "large_airport";
        return dataFilter.doFilter(unfilteredAirportsData, LARGE_AIRPORT_COLUMN, filter);
    }

    public Set<String> getIATACodes() {
        List<String[]> largeAirports = filterLargeAirports();
        return dataFilter.getKeys(largeAirports, KEY_COLUMN);
    }

    public List<String[]> importAirportDataFromOpenFlights() {
        return csvReader.readFile(OPEN_FLIGHTS_FILE_PATH);
    }

    public List<String[]> filterAirportByIATA() {
        List<String[]> allAirportsFromOpenData = importAirportDataFromOpenFlights();
        Set<String> IATACodes = getIATACodes();
        return dataFilter.doFilter(allAirportsFromOpenData, IATA_CODE_COLUMN, IATACodes);
    }




}