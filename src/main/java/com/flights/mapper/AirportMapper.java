package com.flights.mapper;

import com.flights.entities.Airport;
import org.springframework.stereotype.Component;

@Component
public class AirportMapper {

    public Airport mapToAirport(String[] data) {
        Airport airport = new Airport();
        airport.setId(Long.parseLong(data[0]));
        airport.setCode(data[1]);
        airport.setType(data[2]);
        airport.setName(data[3]);
        airport.setLatitudeDeg(Double.parseDouble(data[4]));
        airport.setLongitudeDeg(Double.parseDouble(data[5]));
        airport.setContinent(data[7]);
        airport.setCountry(data[8]);
        airport.setMunicipality(data[10]);
        airport.setHomeLink(data[15]);
        return airport;
    }

}
