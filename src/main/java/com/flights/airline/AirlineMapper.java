package com.flights.airline;

import com.flights.airport.Airline;
import org.springframework.stereotype.Component;

@Component
public class AirlineMapper {

    public Airline mapToAirline(String[] data) {
        Airline airline = new Airline();
        airline.setId(Long.parseLong(data[0]));
        airline.setName(data[1]);
        airline.setAlias(data[2]);
        airline.setIATA_Code(isValidValue(data[3]) ? data[3] : null);
        airline.setICAO_Code(isValidValue(data[4]) ? data[4] : null);
        airline.setCallSign(data[5]);
        airline.setCountry(data[6]);
        return airline;
    }

    private boolean isValidValue(String str) {
        return str != null && !str.trim().isEmpty() && !str.equals("\\N");
    }

}
