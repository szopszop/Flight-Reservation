package com.flights.flight;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/flights")
@AllArgsConstructor
@CrossOrigin(origins = {"http://localhost:3000/", "https://flight-reservations.eu.org"}, allowedHeaders = "*", allowCredentials = "true")
public class FlightController {

    private final FlightService flightService;

    @GetMapping("/{iataCode}")
    public ResponseEntity<List<FlightDto>> findUpcomingFlights(@PathVariable String iataCode) {
        List<FlightDto> flights = flightService.findUpcomingFlights(iataCode);
        return ResponseEntity.ok(flights);
    }


}
