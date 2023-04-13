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

    public AirportDto mapToAirportDto(Airport airport) {
        return AirportDto.builder()
                .id(airport.getId())
                .name(airport.getName())
                .city(airport.getCity())
                .country(airport.getCountry())
                .IATA_Code(airport.getIATA_Code())
                .ICAO_Code(airport.getICAO_Code())
                .latitude(airport.getLatitude())
                .longitude(airport.getLongitude())
                .timezone(airport.getTimezone())
                .dst(airport.getDst())
                .build();
    }

    public Airport mapToAirport(AirportDto airportDto) {
        return Airport.builder()
                .id(airportDto.getId())
                .name(airportDto.getName())
                .city(airportDto.getCity())
                .country(airportDto.getCountry())
                .IATA_Code(airportDto.getIATA_Code())
                .ICAO_Code(airportDto.getICAO_Code())
                .latitude(airportDto.getLatitude())
                .longitude(airportDto.getLongitude())
                .timezone(airportDto.getTimezone())
                .dst(airportDto.getDst())
                .build();
    }
}
