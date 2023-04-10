package com.flights.airport;

import org.springframework.stereotype.Component;

@Component
public class AirportMapper {

    public Airport mapToAirport(String[] data) {
        Airport airport = new Airport();
        airport.setId(Long.parseLong(data[0]));
        airport.setName(data[1]);
        airport.setCity(data[2]);
        airport.setCountry(data[3]);
        airport.setIATA_Code(data[4].equals("\\N") ? null : data[4]);
        airport.setICAO_Code(data[5].equals("\\N") ? null : data[5]);
        airport.setLatitude(Double.parseDouble(data[6]));
        airport.setLongitude(Double.parseDouble(data[7]));
        airport.setTimezone(Double.parseDouble(data[9]));
        airport.setDst(data[10]);
        return airport;
    }

}
