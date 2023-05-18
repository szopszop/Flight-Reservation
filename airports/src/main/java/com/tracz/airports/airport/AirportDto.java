package com.tracz.airports.airport;


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
    private Long countryId;
    private String iataCode;
    private String icaoCode;
    private Double latitude;
    private Double longitude;
    private Double timezone;
    private String dst;
}