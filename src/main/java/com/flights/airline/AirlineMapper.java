package com.flights.airline;

import org.springframework.stereotype.Component;
import static com.flights.util.Validator.*;

@Component
public class AirlineMapper {

    public Airline mapToAirline(String[] data) {
        Airline airline = new Airline();
        airline.setId(isValidValue(data[0]) ? Long.parseLong(data[0]) : null);
        airline.setName(isValidValue(data[1]) ? data[1] : null);
        airline.setAlias(isValidValue(data[2]) ? data[2] : null);
        airline.setIATA_Code(isValidValue(data[3]) ? data[3] : null);
        airline.setICAO_Code(isValidValue(data[4]) ? data[4] : null);
        airline.setCallSign(isValidValue(data[5]) ? data[5] : null);
        airline.setCountry(isValidValue(data[6]) ? data[6] : null);
        return airline;
    }



}
