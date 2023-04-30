package com.flights.airline;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Builder
@Table(name = "airlines")
public class Airline {
    @Id
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "iata_code")
    private String iataCode;
    @Column(name = "icao_code")
    private String icaoCode;
    @Column(name = "callsign")
    private String callSign;
    @Column(name = "country")
    private String country;
}
