package com.flights.flight;

import com.flights.airport.Airport;
import com.flights.flightReservation.FlightReservation;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.hibernate.annotations.GenericGenerator;
import org.jetbrains.annotations.NotNull;

import java.math.BigDecimal;
import java.time.LocalDateTime;
import java.util.List;
import java.util.UUID;

@Data
@AllArgsConstructor
@NoArgsConstructor
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
    @JoinColumn(name = "departure_airport_id")
    private Airport departureAirport;

    @NotNull
    @ManyToOne
    @JoinColumn(name = "arrival_airport_id")
    private Airport arrivalAirport;

    @NotNull
    private LocalDateTime departureTime;

    @NotNull
    private LocalDateTime arrivalTime;

    @NotNull
    private BigDecimal price;

    @OneToMany(mappedBy = "flight")
    private List<FlightReservation> reservations;

}
