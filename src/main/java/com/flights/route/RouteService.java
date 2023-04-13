package com.flights.route;

import com.flights.airport.AirportService;
import com.flights.csv.CsvReader;
import com.flights.csv.DataFilter;
import com.flights.exception.MappingExceptionHandler;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class RouteService {

    private final CsvReader csvReader;
    private final DataFilter dataFilter;
    private final RouteRepository routeRepository;
    private final RouteMapper routeMapper;
    private final AirportService airportService;
    private static final String ROUTES_FILE_PATH = "src/main/resources/openFlights/routes-openFlights.csv";
    private static final int AIRPORT_ID_COLUMN = 3;

    public void transferRoutesToDatabase() {
        List<String[]> routesData = filterRelevantRoutes();
        List<Route> routes = mapRouteData(routesData);
        routeRepository.saveAll(routes);
    }

    public List<RouteDto> findRoutesByAirlineId(Long airlineId) {
        return convertToRouteDtos(routeRepository.findByAirlineId(airlineId));
    }

    public List<RouteDto> findRoutesBySourceAirport(Long airportId) {
        return convertToRouteDtos(routeRepository.findBySourceAirportId(airportId));
    }

    public List<RouteDto> findRoutesByDestinationAirport(Long airportId) {
        return convertToRouteDtos(routeRepository.findByDestinationAirportId(airportId));
    }


    private List<String[]> importRoutesData() {
        return csvReader.readFile(ROUTES_FILE_PATH);
    }

    private List<String[]> filterRelevantRoutes() {
        List<String[]> unfilteredRoutesData = importRoutesData();
        Set<String> relevantAirportIds = airportService.getFilteredAirportIds();
        return dataFilter.doFilter(unfilteredRoutesData, AIRPORT_ID_COLUMN, relevantAirportIds);
    }

    private List<Route> mapRouteData(List<String[]> routesData) {
        MappingExceptionHandler<Route> exceptionHandler = new MappingExceptionHandler<>();
        List<Route> routes = new ArrayList<>();
        for (String[] routeData : routesData) {
            Route route = exceptionHandler.handleException(routeMapper::mapToRoute, routeData);
            if (route != null) {
                routes.add(route);
            }
        }
        return routes;
    }


    private List<RouteDto> convertToRouteDtos(List<Route> routes) {
        return routes.stream()
                .map(routeMapper::mapToRouteDto)
                .collect(Collectors.toList());
    }

}
