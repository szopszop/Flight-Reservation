package com.flights.airline;

import com.flights.csv.CsvReader;
import com.flights.csv.DataFilter;
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
    public static final int IATA_COLUMN = 3;
    public static final int ICAO_COLUMN = 4;
    public static final int ACTIVE_COLUMN = 7;

    public void transferAirlinesToDatabase() {
        List<String[]> filteredAirlinesData = filterValidAirlines();
        List<Airline> airlines = mapAirlineData(filteredAirlinesData);
        airlineRepository.saveAll(airlines);
    }

    private List<String[]> importAirlinesData() {
        return csvReader.readFile(AIRLINES_FILE_PATH);
    }

    private List<String[]> filterActiveAirlines() {
        List<String[]> unfilteredAirlinesData = importAirlinesData();
        String filter = "Y";
        return dataFilter.doFilter(unfilteredAirlinesData, ACTIVE_COLUMN, filter);
    }

    private List<String[]> filterValidAirlines() {
        List<String[]> activeAirlines = filterActiveAirlines();
        return dataFilter.filterByIataAndIcao(activeAirlines, IATA_COLUMN, ICAO_COLUMN);
    }

    private List<Airline> mapAirlineData(List<String[]> filteredAirlines) {
        MappingExceptionHandler<Airline> exceptionHandler = new MappingExceptionHandler<>();
        List<Airline> airlines = new ArrayList<>();
        for (String[] airlineData : filteredAirlines) {
            Airline airline = exceptionHandler.handleException(airlineMapper::mapToAirline, airlineData);
            if (airline != null) {
                airlines.add(airline);
            }
        }
        return airlines;
    }


}
