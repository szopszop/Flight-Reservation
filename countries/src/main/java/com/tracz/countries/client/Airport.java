package com.tracz.countries.client;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Airport {

    private String name;
    private String city;
    private String iataCode;
    private String icaoCode;
    private Double latitude;
    private Double longitude;
    private Double timezone;
    private String dst;

}
