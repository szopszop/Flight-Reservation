package com.flights.airport;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class AirportMapperTest {

    private AirportMapper airportMapper;

//    @BeforeEach
//    void setUp() {
//        airportMapper = new AirportMapper();
//    }
//
//    @Test
//    void mapToAirport_validData() {
//        String[] data = new String[]{"13773", "Whitehorse Seaplane Base", "Whitehorse", "Canada", "\\N", "CEZ5", "60.69110107421875", "-135.03700256347656", "2138", "-8", "A", "\\N", "airport", "OurAirports"};
//        Airport airport = airportMapper.mapToAirport(data);
//        assertAll(
//                () -> assertEquals(Long.parseLong(data[0]), airport.getId()),
//                () -> assertEquals(data[1], airport.getName()),
//                () -> assertEquals(data[2], airport.getCity()),
//                () -> assertEquals(data[3], airport.getCountry()),
//                () -> assertEquals(data[5], airport.getICAO_Code()),
//                () -> assertEquals(Double.parseDouble(data[6]), airport.getLatitude()),
//                () -> assertEquals(Double.parseDouble(data[7]), airport.getLongitude()),
//                () -> assertEquals(Double.parseDouble(data[9]), airport.getTimezone()),
//                () -> assertEquals(data[10], airport.getDst())
//        );
//        assertNull(airport.getIATA_Code());
//    }
//
//    @Test
//    void mapToAirport_validDataWithNulls() {
//        String[] data = new String[]{"13773","Whitehorse Seaplane Base","Whitehorse","Canada","\\N","\\N","60.69110107421875","-135.03700256347656","2138","-8","A","\\N","airport","OurAirports"};
//        Airport airport = airportMapper.mapToAirport(data);
//
//        assertAll(
//                () -> assertNull(airport.getIATA_Code(), "IATA code should be null"),
//                () -> assertNull(airport.getICAO_Code(), "ICAO code should be null")
//        );
//    }
//
//    @Test
//    void mapToAirport_invalidLongitude() {
//        String[] data = new String[]{"13773","Whitehorse Seaplane Base","Whitehorse","Canada","YXY","CEZ5","60.69110107421875","invalid_longitude","2138","-8","A","\\N","airport","OurAirports"};
//        assertThrows(NumberFormatException.class, () -> airportMapper.mapToAirport(data));
//    }
//
//    @Test
//    void mapToAirport_invalidLatitude() {
//        String[] data = new String[]{"13773","Whitehorse Seaplane Base","Whitehorse","Canada","YXY","CEZ5","invalid_latitude","-135.03700256347656","2138","-8","A","\\N","airport","OurAirports"};
//        assertThrows(NumberFormatException.class, () -> airportMapper.mapToAirport(data));
//    }
//
//    @Test
//    void mapToAirport_invalidTimeZone() {
//        String[] data = new String[]{"13773","Whitehorse Seaplane Base","Whitehorse","Canada","YXY","CEZ5","60.69110107421875","-135.03700256347656","2138","invalid_timezone","A","\\N","airport","OurAirports"};
//        assertThrows(NumberFormatException.class, () -> airportMapper.mapToAirport(data));
//    }



}
