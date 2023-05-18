package com.tracz.flights.flight;


import lombok.Data;

import java.util.List;

@Data
public class FlightApiResponse {
    private List<FlightApiResponseDto> flights;
}