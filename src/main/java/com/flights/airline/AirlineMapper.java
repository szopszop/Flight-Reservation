package com.flights.airline;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@AllArgsConstructor
@Component
public class AirlineMapper {

    public AirlineDto mapToAirlineDto(Airline airline) {
        return AirlineDto.builder()
                .id(airline.getId())
                .name(airline.getName())
                .iataCode(airline.getIataCode())
                .icaoCode(airline.getIcaoCode())
                .callSign(airline.getCallSign())
                .countryId(airline.getCountry().getId())
                .build();
    }

}