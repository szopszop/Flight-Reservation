package com.tracz.countries.country;

import com.tracz.countries.client.Airline;
import com.tracz.countries.client.Airport;
import lombok.*;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FullCountryResponse {

    private Long id;
    private String name;
    private Double longitude;
    private Double latitude;
    private List<Airport> airports;
    private List<Airline> airlines;

}
