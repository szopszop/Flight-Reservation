package com.flights.airport;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Set;

@RestController
@RequestMapping("/airports")
@AllArgsConstructor
public class AirportController {


    private final AirportService airportService;

    @GetMapping
    public ResponseEntity<List<AirportDto>> findAllAirports() {
        return ResponseEntity.ok(airportService.findAllAirports());
    }

    @GetMapping("/{country}")
    public ResponseEntity<List<AirportDto>> findAirportByCountry(@PathVariable(value = "country") String country) {
        return ResponseEntity.ok(airportService.findAirportsByCountry(country));
    }

    @GetMapping("/countries")
    public ResponseEntity<Set<String>> findDistinctCountries() {
        return ResponseEntity.ok(airportService.findDistinctCountries());
    }

    @GetMapping("/nearby")
    public ResponseEntity<List<AirportDto>> findAirportsNearby(
            @RequestParam("latitude") double latitude,
            @RequestParam("longitude") double longitude,
            @RequestParam("distance") double distance) {
        return ResponseEntity.ok(airportService.findAirportsNearby(latitude, longitude, distance));
    }

}

