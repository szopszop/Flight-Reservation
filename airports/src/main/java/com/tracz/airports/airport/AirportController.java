package com.tracz.airports.airport;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/airports")
@AllArgsConstructor
@CrossOrigin(origins = {"http://localhost:3000/", "https://ochotadariusz.github.io/"}, allowedHeaders = "*", allowCredentials = "true")
public class AirportController {


    private final AirportService airportService;

    @GetMapping
    public ResponseEntity<List<AirportDto>> findAllAirports() {
        return ResponseEntity.ok(airportService.findAllAirports());
    }

    @GetMapping("/{country-id}")
    public ResponseEntity<List<AirportDto>> findAirportByCountryId(@PathVariable(value = "country-id") Long countryId) {
        return ResponseEntity.ok(airportService.findAirportsByCountryId(countryId));

    }

    @GetMapping("/nearby")
    public ResponseEntity<List<AirportDto>> findAirportsNearby(
            @RequestParam("latitude") double latitude,
            @RequestParam("longitude") double longitude,
            @RequestParam("distance") double distance) {
        return ResponseEntity.ok(airportService.findAirportsNearby(latitude, longitude, distance));
    }

}
