package com.tracz.countries;


import com.fasterxml.jackson.annotation.JsonIgnore;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.List;

@Data
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "countries")
public class Country {

    @Id
    @GeneratedValue
    @Column(name = "id")
    private Long id;
    @Column(name = "name")
    private String name;
    @Column(name = "longitude")
    private float longitude;
    @Column(name = "latitude")
    private float latitude;
//
//    @JsonIgnore
//    @OneToMany(mappedBy = "country")
//    private List<Airport> airports;
//
//    @JsonIgnore
//    @OneToMany(mappedBy = "country")
//    private List<Airline> airlines;
//



}