package com.flights.route;

import org.springframework.stereotype.Component;

import static com.flights.util.Validator.isValidValue;

@Component
public class RouteMapper {

    public Route mapToRoute(String[] data) {
        try {
            return Route.builder()
                    .airline(isValidValue(data[0]) ? data[0] : null)
                    .airlineId(isValidValue(data[1]) ? Long.parseLong(data[1]) : null)
                    .sourceAirport(isValidValue(data[2]) ? data[2] : null)
                    .sourceAirportId(isValidValue(data[3]) ? Long.parseLong(data[3]) : null)
                    .destinationAirport(isValidValue(data[4]) ? data[4] : null)
                    .destinationAirportId(isValidValue(data[5]) ? Long.parseLong(data[5]) : null)
                    .build();
        } catch (NumberFormatException e) {
            return null;
        }
    }
}