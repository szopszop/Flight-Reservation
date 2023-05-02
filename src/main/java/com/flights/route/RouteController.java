package com.flights.route;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/routes")
@AllArgsConstructor
public class RouteController {

    private final RouteService routeService;

    @GetMapping("/airline/{airlineId}")
    public ResponseEntity<List<RouteDto>> findRoutesByAirlineId(
            @PathVariable(name = "airlineId") Long airlineId) {
        return ResponseEntity.ok(routeService.findRoutesByAirlineId(airlineId));
    }

    @GetMapping("/airport/to/{airportId}")
    public ResponseEntity<List<RouteDto>> findRoutesByDestinationAirport(
            @PathVariable(name = "airportId") Long airportId) {
        return ResponseEntity.ok(routeService.findRoutesByDestinationAirport(airportId));
    }

    @GetMapping("/airport/from/{airportId}")
    public ResponseEntity<List<RouteDto>> findRoutesBySourceAirport(
            @PathVariable(name = "airportId") Long airportId) {
        return ResponseEntity.ok(routeService.findRoutesBySourceAirport(airportId));
    }

}