package com.flights.flight;

import com.flights.airport.AirportDto;
import com.flights.flightReservation.FlightReservation;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class FlightDto {

    private UUID id;
    private AirportDto departureAirport;
    private AirportDto arrivalAirport;
    private LocalDateTime departureTime;
    private LocalDateTime departureTimeUtc;
    private LocalDateTime arrivalTime;
    private LocalDateTime arrivalTimeUtc;
    private String airlineIata;
    private String flightIata;
    private String flightNumber;
    private String depTerminal;
    private String depGate;
    private String status;
    private int duration;
    private int delayed;
    private String aircraftIcao;
    private BigDecimal price;
    private List<FlightReservation> reservations;

}