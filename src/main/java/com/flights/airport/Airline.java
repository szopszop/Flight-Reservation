package com.flights.airport;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "airlines")
public class Airline {
    @Id
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "alias")
    private String alias;
    @Column(name = "iata_code")
    private String IATA_Code;
    @Column(name = "icao_code")
    private String ICAO_Code;
    @Column(name = "callsign")
    private String callSign;
    @Column(name = "country")
    private String country;
}
