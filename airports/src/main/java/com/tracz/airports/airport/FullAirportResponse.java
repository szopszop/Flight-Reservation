package com.tracz.airports.airport;

import com.tracz.airports.client.Flight;
import lombok.*;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FullAirportResponse {

    private Long id;
    private String name;
    private Double longitude;
    private Double latitude;
    private List<Flight> arrivalFlights;
    private List<Flight> departureFlights;

}
