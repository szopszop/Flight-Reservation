package com.flights.route;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/v1/routes")
@AllArgsConstructor
public class RouteController {

    private final RouteService routeService;

    @GetMapping("/airlineId")
    public ResponseEntity<List<RouteDto>> findRoutes(@RequestParam(name = "airlineId") Long airlineId) {
        return ResponseEntity.ok(routeService.findRoutesByAirlineId(airlineId));
    }

    @GetMapping("/airportId")
    public ResponseEntity<List<RouteDto>> findRoutesByDestinationAirport(@RequestParam(name = "airportId") Long airportId) {
        return ResponseEntity.ok(routeService.findRoutesByDestinationAirport(airportId));
    }

}
