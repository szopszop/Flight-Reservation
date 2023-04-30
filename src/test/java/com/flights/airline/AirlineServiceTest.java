package com.flights.airline;

import com.flights.csv.CsvReader;
import com.flights.csv.DataFilter;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;

import java.util.Arrays;
import java.util.List;

@ExtendWith(MockitoExtension.class)
class AirlineServiceTest {

    @InjectMocks
    private AirlineService airlineService;

    @Mock
    private CsvReader csvReader;
    @Mock
    private DataFilter dataFilter;
    @Mock
    private AirlineMapper airlineMapper;
    @Mock
    private AirlineRepository airlineRepository;

    private List<String[]> airlinesData;
    private List<String[]> filteredAirlinesData;
    private List<Airline> airlines;

    @BeforeEach
    void setUp() {
        airlineService = new AirlineService(csvReader, dataFilter, airlineMapper, airlineRepository);

        airlinesData = Arrays.asList(
                new String[]{"1", "Airline1", "Alias1", "IATA1", "ICAO1", "CallSign1", "Country1", "Y"},
                new String[]{"2", "Airline2", "Alias2", "IATA2", "ICAO2", "CallSign2", "Country2", "N"},
                new String[]{"3", "Airline3", "Alias3", "IATA3", "ICAO3", "CallSign3", "Country3", "N"}
        );

        filteredAirlinesData = Arrays.asList(
                new String[]{"1", "Airline1", "Alias1", "IATA1", "ICAO1", "CallSign1", "Country1", "Y"},
                new String[]{"2", "Airline2", "Alias2", "IATA2", "ICAO2", "CallSign2", "Country2", "N"}

        );
        Airline airline = Airline.builder()
                .id(1L)
                .name("Airline1")
                .iataCode("IATA1")
                .icaoCode("ICAO1")
                .callSign("CallSign1")
                .country("Country1")
                .build();

        airlines = Arrays.asList(airline);
    }

    @Test
    void test_transferAirlinesToDatabase() {

    }



}