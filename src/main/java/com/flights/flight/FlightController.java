package com.flights.flight;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/api/v1/flights")
@AllArgsConstructor
public class FlightController {

    private final FlightService flightService;

    @GetMapping("/{iataCode")
    public ResponseEntity<List<Flight>> findUpcomingFlights(@PathVariable String iataCode) {
        List<Flight> flights = flightService.saveUpcomingFlights(iataCode);
        return ResponseEntity.ok(flights);
    }


}
