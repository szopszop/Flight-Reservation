package com.tracz.flights.flight;


import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static com.tracz.flights.utils.Validator.isValidValue;


@Slf4j
@Component
@AllArgsConstructor
public class FlightMapper {
    public FlightDto mapToFlightDto(Flight flight) {
        return FlightDto.builder()
                .id(flight.getId())
                .departureAirportIata(flight.getDepartureAirportIata())
                .arrivalAirportIata(flight.getArrivalAirportIata())
                .departureTime(flight.getDepartureTime())
                .departureTimeUtc(flight.getDepartureTimeUtc())
                .arrivalTime(flight.getArrivalTime())
                .arrivalTimeUtc(flight.getArrivalTimeUtc())
                .airlineIata(flight.getAirlineIata())
                .flightIata(flight.getFlightIata())
                .flightNumber(flight.getFlightNumber())
                .depTerminal(flight.getDepTerminal())
                .depGate(flight.getDepGate())
                .status(flight.getStatus())
                .duration(flight.getDuration())
                .delayed(flight.getDelayed())
                .aircraftIcao(flight.getAircraftIcao())
                .build();
    }

    public Flight mapToFlight(FlightApiResponseDto dto) {
        return Flight.builder()
                .departureAirportIata(dto.getDepIata())
                .arrivalAirportIata(dto.getArrIata())
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
                .duration(dto.getDuration() != null ? dto.getDuration() : 0)
                .delayed(dto.getDelayed() != null ? dto.getDelayed() : 0)
                .aircraftIcao(dto.getAircraftIcao())
                .build();
    }

    private JavaTimeModule getJavaTimeModule() {
        DateTimeFormatter dateTimeFormatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        JavaTimeModule javaTimeModule = new JavaTimeModule();
        javaTimeModule.addDeserializer(LocalDateTime.class, new LocalDateTimeDeserializer(dateTimeFormatter));
        return javaTimeModule;
    }

    List<Flight> parseResponse(String responseBody) {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.registerModule(getJavaTimeModule());

        try {
            JsonNode rootNode = objectMapper.readTree(responseBody);
            JsonNode responseNode = rootNode.path("response");
            if (responseNode.isMissingNode()) {
                log.error("The 'response' field is missing in the JSON response {}", responseBody);
                return new ArrayList<>();
            }
            List<FlightApiResponseDto> flightDtos = objectMapper.convertValue(responseNode, new TypeReference<>() {
            });
            return flightDtos.stream()
                    .map(this::mapToFlight)
                    .collect(Collectors.toList());
        } catch (JsonProcessingException e) {
            log.error("Error parsing JSON {}", responseBody, e);
            return new ArrayList<>();
        }
    }

}