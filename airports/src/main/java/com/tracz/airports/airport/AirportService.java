package com.tracz.airports.airport;


import com.tracz.airports.utils.DistanceCalculator;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

@Service
@AllArgsConstructor
public class AirportService {

    private final AirportMapper airportMapper;
    private final AirportRepository airportRepository;


    public List<AirportDto> findAllAirports() {
        List<Airport> airports = airportRepository.findAll();
        return convertToAirportDtos(airports);
    }


    public Airport findAirportByIataCode(String iataCode) {
        return airportRepository.findByIataCode(iataCode).orElse(null);
    }

    public List<AirportDto> findAirportsByCountryId(Long countryId) {
        Optional<List<Airport>> airportsByCountry = airportRepository.findByCountryId(countryId);
        if (airportsByCountry.isPresent()) {
            return convertToAirportDtos(airportsByCountry.get());
        } else {
            return new ArrayList<>();
        }
    }

    public List<AirportDto> findAirportsNearby(double latitude, double longitude, double distance) {
        return convertToAirportDtos(airportRepository.findAll().stream()
                .filter(airport -> DistanceCalculator.calculateDistance(
                        latitude, longitude, airport.getLatitude(), airport.getLongitude())
                        <= distance)
                .collect(Collectors.toList()));
    }

    private List<AirportDto> convertToAirportDtos(List<Airport> airports) {
        return airports.stream()
                .map(airportMapper::mapToAirportDto)
                .collect(Collectors.toList());
    }

}