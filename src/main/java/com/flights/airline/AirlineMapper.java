package com.flights.airline;

import org.springframework.stereotype.Component;

import static com.flights.util.Validator.isValidValue;

@Component
public class AirlineMapper {

    public Airline mapToAirline(String[] data) {
        return Airline.builder()
                .id(isValidValue(data[0]) ? Long.parseLong(data[0]) : null)
                .name(isValidValue(data[1]) ? data[1] : null)
                .iataCode(isValidValue(data[3]) ? data[3] : null)
                .icaoCode(isValidValue(data[4]) ? data[4] : null)
                .callSign(isValidValue(data[5]) ? data[5] : null)
                .country(isValidValue(data[6]) ? data[6] : null)
                .build();
    }


}
