package com.flights.airport;

import org.springframework.stereotype.Component;

import static com.flights.util.Validator.isValidValue;

@Component
public class AirportMapper {

    public Airport mapToAirport(String[] data) {
        Airport airport = new Airport();
        airport.setId(isValidValue(data[0]) ? Long.parseLong(data[0]) : null);
        airport.setName(isValidValue(data[1]) ? data[1] : null);
        airport.setCity(isValidValue(data[2]) ? data[2] : null);
        airport.setCountry(isValidValue(data[3]) ? data[3] : null);
        airport.setIATA_Code(isValidValue(data[4]) ? data[4] : null);
        airport.setICAO_Code(isValidValue(data[5]) ? data[5] : null);
        airport.setLatitude(isValidValue(data[6]) ? Double.parseDouble(data[6]) : null);
        airport.setLongitude(isValidValue(data[7]) ? Double.parseDouble(data[7]) :null);
        airport.setTimezone(isValidValue(data[9]) ? Double.parseDouble(data[9]) :null);
        airport.setDst(isValidValue(data[10]) ? data[10] : null);
        return airport;
    }

}
