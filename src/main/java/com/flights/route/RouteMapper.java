package com.flights.route;

import org.springframework.stereotype.Component;

@Component
public class RouteMapper {

    public RouteDto mapToRouteDto(Route route) {
        return RouteDto.builder()
                .id(route.getId())
                .airline(route.getAirline())
                .airlineId(route.getAirlineId())
                .sourceAirport(route.getSourceAirport())
                .sourceAirportId(route.getSourceAirportId())
                .destinationAirport(route.getDestinationAirport())
                .destinationAirportId(route.getDestinationAirportId())
                .build();
    }

}
