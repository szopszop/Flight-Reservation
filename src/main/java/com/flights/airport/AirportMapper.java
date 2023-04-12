package com.flights.airport;

import org.springframework.stereotype.Component;

import static com.flights.util.Validator.isValidValue;

@Component
public class AirportMapper {

    public Airport mapToAirport(String[] data) {
        return Airport.builder()
                .id(isValidValue(data[0]) ? Long.parseLong(data[0]) : null)
                .name(isValidValue(data[1]) ? data[1] : null)
                .city(isValidValue(data[2]) ? data[2] : null)
                .country(isValidValue(data[3]) ? data[3] : null)
                .IATA_Code(isValidValue(data[4]) ? data[4] : null)
                .ICAO_Code(isValidValue(data[5]) ? data[5] : null)
                .latitude(isValidValue(data[6]) ? Double.parseDouble(data[6]) : null)
                .longitude(isValidValue(data[7]) ? Double.parseDouble(data[7]) : null)
                .timezone(isValidValue(data[9]) ? Double.parseDouble(data[9]) : null)
                .dst(isValidValue(data[10]) ? data[10] : null)
                .build();
    }
}
