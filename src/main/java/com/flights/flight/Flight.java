package com.flights.flight;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.flights.airport.Airport;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;
import org.jetbrains.annotations.NotNull;

import java.time.LocalDateTime;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor(force = true)
@Builder
@Entity
@Table(name = "flights")
public class Flight {
    @Id
    @GeneratedValue(generator = "uuid2")
    @GenericGenerator(name = "uuid2", strategy = "org.hibernate.id.UUIDGenerator")
    @Column(columnDefinition = "uuid")
    private UUID id;

    @JsonBackReference
    @NotNull
    @ManyToOne
    @JoinColumn(name = "departure_airport_id")
    private Airport departureAirport;

    @JsonBackReference
    @ManyToOne
    @JoinColumn(name = "arrival_airport_id")
    private Airport arrivalAirport;

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


