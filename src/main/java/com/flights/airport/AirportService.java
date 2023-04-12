package com.flights.airport;

import com.flights.csv.CsvReader;
import com.flights.csv.DataFilter;
import com.flights.exception.MappingExceptionHandler;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

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
    private static final int IATA_CODE_COLUMN_HUM_DATA = 13;
    private static final int IATA_CODE_COLUMN_OPEN_LIGHTS = 4;
    private static final int ID_CODE_OPEN_FLIGHT = 0;

    public List<AirportDto> getAllAirports() {
        List<Airport> airports = airportRepository.findAll();
        return convertToAirportDto(airports);
    }

    public List<AirportDto> getAirportsByCountry(String country) {
        List<Airport> airportsByCountry = airportRepository.findByCountry(country);
        return convertToAirportDto(airportsByCountry);
    }

    public void transferAirportsToDatabase() {
        List<String[]> filteredAirports = filterAirportByIATA();
        List<Airport> airports = mapAirportData(filteredAirports);
        airportRepository.saveAll(airports);
    }

    public Set<String> getFilteredAirportIds() {
        List<String[]> filteredAirports = filterAirportByIATA();
        return dataFilter.getKeys(filteredAirports, ID_CODE_OPEN_FLIGHT);
    }

    private List<String[]> importAirportDataFromHumData() {
        return csvReader.readFile(HUM_DATA_FILE_PATH);
    }

    private List<String[]> filterLargeAirports() {
        List<String[]> unfilteredAirportsHumData = importAirportDataFromHumData();
        String filter = "large_airport";
        return dataFilter.doFilter(unfilteredAirportsHumData, LARGE_AIRPORT_COLUMN, filter);
    }

    private Set<String> getIATACodesFromHumData() {
        List<String[]> largeAirportsHumData = filterLargeAirports();
        return dataFilter.getKeys(largeAirportsHumData, IATA_CODE_COLUMN_HUM_DATA);
    }

    private List<String[]> importAirportDataFromOpenFlights() {
        return csvReader.readFile(OPEN_FLIGHTS_FILE_PATH);
    }

    private List<String[]> filterAirportByIATA() {
        List<String[]> allAirportsFromOpenFlights = importAirportDataFromOpenFlights();
        Set<String> IATACodes = getIATACodesFromHumData();
        return dataFilter.doFilter(allAirportsFromOpenFlights, IATA_CODE_COLUMN_OPEN_LIGHTS, IATACodes);
    }

    private List<Airport> mapAirportData(List<String[]> filteredAirports) {
        MappingExceptionHandler<Airport> exceptionHandler = new MappingExceptionHandler<>();
        List<Airport> airports = new ArrayList<>();
        for (String[] airportData : filteredAirports) {
            Airport airport = exceptionHandler.handleException(airportMapper::mapToAirport, airportData);
            if (airport != null) {
                airports.add(airport);
            }
        }
        return airports;
    }
    private List<AirportDto> convertToAirportDto(List<Airport> airports) {
        return airports.stream()
                .map(airportMapper::toAirportDto)
                .collect(Collectors.toList());
    }


}