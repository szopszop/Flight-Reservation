package com.flights.airport;

import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class AirportMapper {


    public AirportDto mapToAirportDto(Airport airport) {
        return AirportDto.builder()
                .id(airport.getId())
                .name(airport.getName())
                .city(airport.getCity())
                .countryId(airport.getCountry().getId())
                .iataCode(airport.getIataCode())
                .icaoCode(airport.getIcaoCode())
                .latitude(airport.getLatitude())
                .longitude(airport.getLongitude())
                .timezone(airport.getTimezone())
                .dst(airport.getDst())
                .build();
    }

}
