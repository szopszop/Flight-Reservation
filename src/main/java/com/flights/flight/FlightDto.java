package com.flights.flight;

import com.fasterxml.jackson.annotation.JsonFormat;
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
    @JsonFormat(pattern="yyyy-MM-dd HH:mm")
    private LocalDateTime departureTime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm")
    private LocalDateTime departureTimeUtc;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm")
    private LocalDateTime arrivalTime;
    @JsonFormat(pattern="yyyy-MM-dd HH:mm")
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