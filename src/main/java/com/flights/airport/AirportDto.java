package com.flights.airport;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AirportDto {

    private Long id;
    private String name;
    private String city;
    private String country;
    private String IATA_Code;
    private String ICAO_Code;
    private Double latitude;
    private Double longitude;
    private Double timezone;
    private String dst;
}
