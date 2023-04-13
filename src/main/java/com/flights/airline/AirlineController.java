package com.flights.airline;

import com.flights.airport.AirportService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("api/v1/airlines")
@AllArgsConstructor
public class AirlineController {

    private final AirlineService airlineService;


}
