package com.tracz.airlines;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
public class AirlineDto {
    private Long id;
    private String name;
    private String iataCode;
    private String icaoCode;
    private String callSign;
    private Long countryId;
}