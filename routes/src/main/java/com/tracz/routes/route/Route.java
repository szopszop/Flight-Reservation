package com.tracz.routes.route;


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
    private String airline;
    private Long airlineId;
    private String sourceAirportIata;
    private Long sourceAirportId;
    private String destinationAirportIata;
    private Long destinationAirportId;

}