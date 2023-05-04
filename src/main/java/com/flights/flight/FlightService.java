package com.flights.flight;

import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.time.LocalDateTime;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@AllArgsConstructor
public class FlightService {

    private final AirlabsApiService airlabsApiService;
    private final FlightRepository flightRepository;
    private final FlightMapper flightMapper;

    @Scheduled(fixedRate = 60 * 60 * 1000) // 1 hour
    public void deleteOldFlights() {
        flightRepository.deleteByDepartureTimeBefore(LocalDateTime.now().minusDays(1));
    }

    public List<FlightDto> findUpcomingFlights(String iataCode) {
        List<Flight> flights = saveUpcomingFlightsIntoDatabase(iataCode);
        return convertToFlightDtos(flights);
    }

    private List<Flight> saveUpcomingFlightsIntoDatabase(String iataCode) {
        ResponseEntity<String> response = airlabsApiService.findUpcomingFlights(iataCode);
        List<Flight> flights = flightMapper.parseResponse(response.getBody());
        return flights.stream()
                .filter(flight -> flight.getArrivalAirport() != null)
                .filter(flight -> flightRepository.findByFlightIata(flight.getFlightIata()).isEmpty())
                .map(flightRepository::save)
                .collect(Collectors.toList());
    }

    private List<FlightDto> convertToFlightDtos(List<Flight> flights) {
        return flights.stream()
                .map(flightMapper::mapToFlightDto)
                .collect(Collectors.toList());
    }
}
