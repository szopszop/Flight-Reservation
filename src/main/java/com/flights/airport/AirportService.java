package com.flights.airport;

import com.flights.csv.CsvReader;
import com.flights.csv.DataFilter;
import com.flights.exception.MappingExceptionHandler;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

@Service
@AllArgsConstructor
public class AirportService {

    private final CsvReader csvReader;
    private final DataFilter dataFilter;
    private final AirportMapper airportMapper;
    private final AirportRepository airportRepository;
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

    public List<Airport> mapAirportData(List<String[]> filteredAirports) {
        MappingExceptionHandler<Airport> errorHandler = new MappingExceptionHandler<>();
        List<Airport> airports = new ArrayList<>();
        for (String[] airportData : filteredAirports) {
            Airport airport = errorHandler.handleError(airportMapper::mapToAirport, airportData);
            if (airport != null) {
                airports.add(airport);
            }
        }
        return airports;
    }
    public void transferAirportsToDatabase() {
        List<String[]> filteredAirports = filterAirportByIATA();
        List<Airport> airports = mapAirportData(filteredAirports);
        airportRepository.saveAll(airports);
    }

}