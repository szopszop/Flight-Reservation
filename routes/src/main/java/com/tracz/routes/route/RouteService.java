package com.tracz.routes.route;


import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class RouteService {

    private final RouteRepository routeRepository;
    private final RouteMapper routeMapper;

    public List<RouteDto> findRoutesByAirlineId(Long airlineId) {
        return convertToRouteDtos(routeRepository.findByAirlineId(airlineId));
    }

    public List<RouteDto> findRoutesBySourceAirport(Long airportId) {
        return convertToRouteDtos(routeRepository.findBySourceAirportId(airportId));
    }

    public List<RouteDto> findRoutesByDestinationAirport(Long airportId) {
        return convertToRouteDtos(routeRepository.findByDestinationAirportId(airportId));
    }

    private List<RouteDto> convertToRouteDtos(List<Route> routes) {
        return routes.stream()
                .map(routeMapper::mapToRouteDto)
                .collect(Collectors.toList());
    }

}