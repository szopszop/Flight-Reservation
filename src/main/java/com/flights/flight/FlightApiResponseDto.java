package com.flights.flight;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.annotation.JsonProperty;
import lombok.Data;

import java.time.LocalDateTime;

@Data
@JsonIgnoreProperties(ignoreUnknown = true)
public class FlightApiResponseDto {

    @JsonProperty("airline_iata")
    private String airlineIata;

    @JsonProperty("flight_iata")
    private String flightIata;

    @JsonProperty("flight_number")
    private String flightNumber;

    @JsonProperty("dep_iata")
    private String depIata;

    @JsonProperty("dep_time")
    private LocalDateTime depTime;

    @JsonProperty("dep_terminal")
    private String depTerminal;

    @JsonProperty("dep_gate")
    private String depGate;

    @JsonProperty("dep_time_utc")
    private LocalDateTime depTimeUtc;

    @JsonProperty("arr_time")
    private LocalDateTime arrTime;

    @JsonProperty("arr_time_utc")
    private LocalDateTime arrTimeUtc;

    @JsonProperty("arr_iata")
    private String arrIata;

    @JsonProperty("status")
    private String status;

    @JsonProperty("duration")
    private Integer duration;

    @JsonProperty("delayed")
    private Integer delayed;

    @JsonProperty("aircraft_icao")
    private String aircraftIcao;

}