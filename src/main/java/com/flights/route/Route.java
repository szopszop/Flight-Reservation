package com.flights.route;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "routes")
public class Route {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Column(name = "airline")
    private String airline;
    @Column(name = "airline_id")
    private Long airlineId;
    @Column(name = "source_airport")
    private String sourceAirport;
    @Column(name = "source_airport_id")
    private Long sourceAirportId;
    @Column(name = "destination_airport")
    private String destinationAirport;
    @Column(name = "destination_airport_id")
    private Long destinationAirportId;

}
