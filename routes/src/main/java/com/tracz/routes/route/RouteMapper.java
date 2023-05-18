package com.tracz.routes.route;


import org.springframework.stereotype.Component;

@Component
public class RouteMapper {

    public RouteDto mapToRouteDto(Route route) {
        return RouteDto.builder()
                .id(route.getId())
                .airline(route.getAirline())
                .airlineId(route.getAirlineId())
                .sourceAirport(route.getSourceAirportIata())
                .sourceAirportId(route.getSourceAirportId())
                .destinationAirport(route.getDestinationAirportIata())
                .destinationAirportId(route.getDestinationAirportId())
                .build();
    }

}