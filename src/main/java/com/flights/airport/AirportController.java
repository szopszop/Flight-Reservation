package com.flights.airport;

import com.flights.route.RouteService;
import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/airports")
@AllArgsConstructor
public class AirportController {


    private final AirportService airportService;

    @GetMapping
    public ResponseEntity<List<AirportDto>> getAllAirports() {
        return ResponseEntity.ok(airportService.getAllAirports());
    }

    @GetMapping("/{country}")
    public ResponseEntity<List<AirportDto>> getAirportByCountry(@PathVariable(value = "country") String country) {
        return ResponseEntity.ok(airportService.getAirportsByCountry(country));
    }

}
