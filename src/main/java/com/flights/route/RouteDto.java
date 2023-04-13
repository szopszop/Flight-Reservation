package com.flights.route;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class RouteDto {

    private Long id;
    private String airline;
    private Long airlineId;
    private String sourceAirport;
    private Long sourceAirportId;
    private String destinationAirport;
    private Long destinationAirportId;

}
