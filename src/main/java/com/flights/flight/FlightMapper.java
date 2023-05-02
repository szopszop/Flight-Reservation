package com.flights.flight;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.fasterxml.jackson.datatype.jsr310.JavaTimeModule;
import com.fasterxml.jackson.datatype.jsr310.deser.LocalDateTimeDeserializer;
import com.flights.airport.Airport;
import com.flights.airport.AirportMapper;
import com.flights.airport.AirportService;
import lombok.AllArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

import static com.flights.util.DistanceCalculator.calculatePrice;
import static com.flights.util.Validator.isValidValue;

@Slf4j
@Component
@AllArgsConstructor
public class FlightMapper {

    private final AirportMapper airportMapper;
    private final AirportService airportService;

    public FlightDto mapToFlightDto(Flight flight) {
        return FlightDto.builder()
                .id(flight.getId())
                .departureAirport(airportMapper.mapToAirportDto(flight.getDepartureAirport()))
                .arrivalAirport(airportMapper.mapToAirportDto(flight.getArrivalAirport()))
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
                .price(flight.getPrice())
                .reservations(flight.getReservations())
                .build();
    }

    public Flight mapToFlight(FlightDto flightDto) {
        return Flight.builder()
                .id(flightDto.getId())
                .departureAirport(airportMapper.mapToAirport(flightDto.getDepartureAirport()))
                .arrivalAirport(airportMapper.mapToAirport(flightDto.getArrivalAirport()))
                .departureTime(flightDto.getDepartureTime())
                .departureTimeUtc(flightDto.getDepartureTimeUtc())
                .arrivalTime(flightDto.getArrivalTime())
                .arrivalTimeUtc(flightDto.getArrivalTimeUtc())
                .airlineIata(flightDto.getAirlineIata())
                .flightIata(flightDto.getFlightIata())
                .flightNumber(flightDto.getFlightNumber())
                .depTerminal(flightDto.getDepTerminal())
                .depGate(flightDto.getDepGate())
                .status(flightDto.getStatus())
                .duration(flightDto.getDuration())
                .delayed(flightDto.getDelayed())
                .aircraftIcao(flightDto.getAircraftIcao())
                .price(flightDto.getPrice())
                .reservations(flightDto.getReservations())
                .build();
    }

    public Flight mapToFlight(FlightApiResponseDto dto) {
        String depIata = dto.getDepIata();
        String arrIata = dto.getArrIata();
        Airport depAirport = airportService.findAirportByIataCode(depIata);
        Airport arrAirport = airportService.findAirportByIataCode(arrIata);

        return Flight.builder()
                .departureAirport(depAirport)
                .arrivalAirport(arrAirport)
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
                .duration(isValidValue(dto.getDuration()) ? dto.getDuration() : 0)
                .delayed(isValidValue(dto.getDelayed()) ? dto.getDelayed() : 0)
                .aircraftIcao(dto.getAircraftIcao())
//                .price(calculatePrice(depAirport, arrAirport))
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
            List<FlightApiResponseDto> flightDtos = objectMapper.convertValue(responseNode, new TypeReference<>() {});
            return flightDtos.stream()
                    .filter(flightDto -> !flightDto.getArrIata().equals("") || flightDto.getArrIata() != null)
                    .map(this::mapToFlight)
                    .collect(Collectors.toList());
        } catch (JsonProcessingException e) {
            log.error("Error parsing JSON {}", responseBody, e);
            return new ArrayList<>();
        }
    }

}
