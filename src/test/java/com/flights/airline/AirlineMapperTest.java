package com.flights.airline;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AirlineMapperTest {

//    private AirlineMapper airlineMapper;
//
//    @BeforeEach
//    void setUp() {
//        airlineMapper = new AirlineMapper();
//    }
//
//    @Test
//    void mapToAirline_validData() {
//        String[] data = new String[]{"3", "1 Time Airline", "\\N", "1T", "RNX", "NEXTIME", "South Africa", "Y"};
//        Airline airline = airlineMapper.mapToAirline(data);
//
//        assertAll(
//                () -> assertEquals(Long.parseLong(data[0]), airline.getId()),
//                () -> assertEquals(data[1], airline.getName()),
//                () -> assertEquals(data[3], airline.getIATA_Code()),
//                () -> assertEquals(data[4], airline.getICAO_Code()),
//                () -> assertEquals(data[5], airline.getCallSign()),
//                () -> assertEquals(data[6], airline.getCountry())
//        );
//    }
//
//    @Test
//    void mapToAirline_invalidIdThrowsNumberFormatException() {
//        String[] data = new String[]{"A", "1 Time Airline", "\\N", "1T", "RNX", "NEXTIME", "South Africa", "Y"};
//        assertThrows(NumberFormatException.class, () -> airlineMapper.mapToAirline(data));
//    }


}