package com.flights.airline;

import com.flights.csv.CsvReader;
import com.flights.csv.DataFilter;
import com.flights.airport.Airline;
import com.flights.exception.MappingExceptionHandler;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

@Service
@AllArgsConstructor
public class AirlineService {
    private final CsvReader csvReader;
    private final DataFilter dataFilter;
    private final AirlineMapper airlineMapper;
    private final AirlineRepository airlineRepository;

    private static final String AIRLINES_FILE_PATH ="src/main/resources/openFlights/airlines-openFlights.csv";
    private static final int ACTIVE_COLUMN = 7;

    public List<String[]> importAirlinesData() {
        return csvReader.readFile(AIRLINES_FILE_PATH);
    }

    public List<String[]> filterActiveAirlines() {
        List<String[]> unfilteredAirlinesData = importAirlinesData();
        String filter = "Y";
        return dataFilter.doFilter(unfilteredAirlinesData, ACTIVE_COLUMN, filter);
    }
    public List<Airline> mapAirlineData(List<String[]> filteredAirlines) {
        MappingExceptionHandler<Airline> errorHandler = new MappingExceptionHandler<>();
        List<Airline> airlines = new ArrayList<>();
        for (String[] airlineData : filteredAirlines) {
            Airline airline = errorHandler.handleError(airlineMapper::mapToAirline, airlineData);
            if (airline != null) {
                airlines.add(airline);
            }
        }
        return airlines;
    }

    public void transferAirlinesToDatabase() {
        List<String[]> filteredAirlines = filterActiveAirlines();
        List<Airline> airports = mapAirlineData(filteredAirlines);
        airlineRepository.saveAll(airports);
    }


}
