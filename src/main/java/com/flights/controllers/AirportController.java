package com.flights.controllers;

import com.flights.repositories.AirportRepository;
import com.flights.service.AirportService;
import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/airport")
@AllArgsConstructor
public class AirportController {


    private final AirportService airportService;
    private final AirportRepository airportRepository;


}
