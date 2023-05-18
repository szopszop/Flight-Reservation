package com.tracz.airlines;


import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/airlines")
@AllArgsConstructor
@CrossOrigin(origins = {"http://localhost:3000/", "https://ochotadariusz.github.io/"}, allowedHeaders = "*", allowCredentials = "true")
public class AirlineController {

    private final AirlineService airlineService;

    @GetMapping("/all")
    public ResponseEntity<List<AirlineDto>> findAllAirlines() {
        return ResponseEntity.ok(airlineService.findAllAirlines());
    }

    @GetMapping("/{airline-id}")
    public ResponseEntity<AirlineDto> findAirlineById(@PathVariable("airline-id") Long airlineId) {
        return ResponseEntity.ok(airlineService.findAirlineById(airlineId));
    }
    @GetMapping("/countries/{country-id}")
    public ResponseEntity<List<AirlineDto>> findAirlinesByCountryId(@PathVariable("country-id") Long countryid) {
        return ResponseEntity.ok(airlineService.findAirlinesByCountryId(countryid));
    }


}