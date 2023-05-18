package com.tracz.airports.airport;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "airports")
public class Airport {

    @Id
    private Long id;
    private String name;
    private String city;
    private String iataCode;
    private String icaoCode;
    private Double latitude;
    private Double longitude;
    private Double timezone;
    private String dst;
    private Long countryId;

//
//    @JsonManagedReference
//    @OneToMany(mappedBy = "departureAirport")
//    private List<Flight> departureFlights;
//
//    @JsonManagedReference
//    @OneToMany(mappedBy = "arrivalAirport")
//    private List<Flight> arrivalFlights;



}