package com.tracz.countries.client;

import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class Airline {

    private String name;
    private String iataCode;
    private String icaoCode;
    private String callSign;

}
