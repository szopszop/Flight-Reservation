package com.flights.entities;

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
@Table(name = "airports")
public class Airport {

    @Id
    @Column(name = "id")
    private Long id;

    @Column(name = "ident")
    private String ident;

    @Column(name = "type")
    private String type;

    @Column(name = "name")
    private String name;

    @Column(name = "latitude_deg")
    private double latitudeDeg;

    @Column(name = "longitude_deg")
    private double longitudeDeg;

    @Column(name = "continent")
    private String continent;

    @Column(name = "iso_country")
    private String isoCountry;

    @Column(name = "municipality")
    private String municipality;

    @Column(name = "home_link")
    private String homeLink;

}
