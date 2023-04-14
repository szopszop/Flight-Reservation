package com.flights.flight;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.databind.type.CollectionType;
import com.flights.airport.Airport;
import com.flights.airport.AirportService;
import com.flights.util.DistanceCalculator;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Slf4j
@AllArgsConstructor
public class FlightService {

    private final AirlabsApiService airlabsApiService;
    private final FlightRepository flightRepository;
    private final AirportService airportService;

    public List<Flight> saveUpcomingFlights(String iataCode) {
        ResponseEntity<String> response = airlabsApiService.findUpcomingFlights(iataCode);
        List<Flight> flights = parseResponse(response.getBody());
        return flightRepository.saveAll(flights);
    }

    private List<Flight> parseResponse(String responseBody) {
        ObjectMapper objectMapper = new ObjectMapper();
        CollectionType collectionType = objectMapper.getTypeFactory()
                .constructCollectionType(List.class, FlightApiResponseDto.class);
        try {
            List<FlightApiResponseDto> flightApiResponseDtoList = objectMapper.readValue(responseBody, collectionType);
            return flightApiResponseDtoList.stream()
                    .map(this::mapToFlight)
                    .collect(Collectors.toList());
        } catch (JsonProcessingException e) {
            log.error("Error parsing JSON {}", responseBody, e);
            return new ArrayList<>();
        }
    }

    private Flight mapToFlight(FlightApiResponseDto dto) {
        Long depIata = dto.getDepIata() != null ? Long.valueOf(dto.getDepIata()) : null;
        Long arrIata = dto.getAirlineIata() != null ? Long.valueOf(dto.getAirlineIata()) : null;
        Airport depAirport = airportService.findAirportById(depIata);
        Airport arrAirport = airportService.findAirportById(arrIata);

        return Flight.builder()
                .departureAirport(airportService.findAirportById(depIata))
                .arrivalAirport(airportService.findAirportById(arrIata))
                .departureTime(dto.getDepTime())
                .departureTimeUtc(dto.getDepTimeUtc())
                .arrivalTime(dto.getArrTime())
                .arrivalTimeUtc(dto.getArrTimeUtc())
                .airlineIata(dto.getAirlineIata())
                .flightIata(dto.getFlightIata())
                .flightNumber(dto.getFlightNumber())
                .depTerminal(dto.getDepTerminal())
                .depGate(dto.getDepGate())
                .status(dto.getStatus())
                .duration(dto.getDuration())
                .delayed(dto.getDelayed())
                .aircraftIcao(dto.getAircraftIcao())
                .price(getPrice(depAirport, arrAirport))
                .build();
    }

    public BigDecimal getPrice(Airport depAirport, Airport arrAirport) {
        double distance = DistanceCalculator.calculateDistance(depAirport.getLatitude(), depAirport.getLongitude(),
                arrAirport.getLatitude(), arrAirport.getLongitude());
        return new BigDecimal(distance * 1.5);
    }
}
