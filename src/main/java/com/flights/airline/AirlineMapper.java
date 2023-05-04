package com.flights.airline;

import com.flights.country.Country;
import com.flights.country.CountryService;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

import static com.flights.util.Validator.isValidValue;

@AllArgsConstructor
@Component
public class AirlineMapper {
    private final CountryService countryService;

    public Airline mapToAirline(String[] data) {
        Country country = countryService.findCountryById(Long.valueOf(data[6]));

        return Airline.builder()
                .id(isValidValue(data[0]) ? Long.parseLong(data[0]) : null)
                .name(isValidValue(data[1]) ? data[1] : null)
                .iataCode(isValidValue(data[3]) ? data[3] : null)
                .icaoCode(isValidValue(data[4]) ? data[4] : null)
                .callSign(isValidValue(data[5]) ? data[5] : null)
                .country(country)
                .build();
    }

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

    public Airline mapToAirline(AirlineDto airlineDto) {
        Country country = countryService.findCountryById(airlineDto.getCountryId());
        return Airline.builder()
                .id(airlineDto.getId())
                .name(airlineDto.getName())
                .iataCode(airlineDto.getIataCode())
                .icaoCode(airlineDto.getIcaoCode())
                .callSign(airlineDto.getCallSign())
                .country(country)
                .build();
    }
}