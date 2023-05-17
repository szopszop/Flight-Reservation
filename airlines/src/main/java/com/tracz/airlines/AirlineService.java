package com.tracz.airlines;


import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class AirlineService {

    private final AirlineMapper airlineMapper;
    private final AirlineRepository airlineRepository;


    public List<AirlineDto> findAllAirlines() {
        List<Airline> airlines = airlineRepository.findAll();
        return convertToAirlineDtos(airlines);
    }

    public AirlineDto findAirlineById(Long airlineId) {
        Airline airline = airlineRepository.findById(airlineId)
                .orElseThrow(() -> new NoSuchElementException("Airline has not been found."));
        return convertToAirlineDto(airline);
    }

    private List<AirlineDto> convertToAirlineDtos(List<Airline> airlines) {
        return airlines.stream()
                .map(airlineMapper::mapToAirlineDto)
                .collect(Collectors.toList());
    }

    private AirlineDto convertToAirlineDto(Airline airline) {
        return airlineMapper.mapToAirlineDto(airline);
    }


}