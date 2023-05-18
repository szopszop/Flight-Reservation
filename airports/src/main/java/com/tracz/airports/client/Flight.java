package com.tracz.airports.client;

import java.time.LocalDateTime;
import java.util.UUID;

public class Flight {

    private UUID id;
    private String departureAirportIata;
    private String arrivalAirportIata;
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

}
