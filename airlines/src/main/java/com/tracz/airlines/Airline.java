package com.tracz.airlines;


import jakarta.persistence.*;
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
    private Long id;
    private String name;
    private String iataCode;
    private String icaoCode;
    private String callSign;
    private Long countryId;

}