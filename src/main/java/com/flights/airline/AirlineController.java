package com.flights.airline;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/v1/airlines")
@AllArgsConstructor
public class AirlineController {

    private final AirlineService airlineService;

    @GetMapping("/all")
    public ResponseEntity<List<AirlineDto>> findAllAirlines() {
        return ResponseEntity.ok(airlineService.findAllAirlines());
    }

    @GetMapping("/{airlineId}")
    public ResponseEntity<AirlineDto> findAirlineById(@PathVariable("airlineId") Long airlineId) {
        return ResponseEntity.ok(airlineService.findAirlineById(airlineId));
    }


}
