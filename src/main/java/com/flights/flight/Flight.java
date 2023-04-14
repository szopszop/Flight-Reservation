package com.flights.flight;

import com.flights.airport.Airport;
import com.flights.flightReservation.FlightReservation;
import com.flights.util.DistanceCalculator;
import jakarta.persistence.*;
import lombok.*;
import org.hibernate.annotations.GenericGenerator;
import org.jetbrains.annotations.NotNull;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
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

    @NotNull
    @ManyToOne
    @JoinColumn(name = "departure_airport")
    private Airport departureAirport;
//      dep_iata;


    @NotNull
    @ManyToOne
    @JoinColumn(name = "arrival_airport")
    private Airport arrivalAirport;

    @NotNull
    private LocalDateTime departureTime;
    @NotNull
    private LocalDateTime departureTimeUtc;

    @NotNull
    private LocalDateTime arrivalTime;
    @NotNull
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

    @NotNull
    private BigDecimal price;  // TODO: distance between airports * some factor

    @OneToMany(mappedBy = "flight")
    private List<FlightReservation> reservations;

}


