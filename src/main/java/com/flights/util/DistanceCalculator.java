package com.flights.util;


import com.flights.airport.Airport;

import java.math.BigDecimal;

public class DistanceCalculator {


    public static double calculateDistance(double lat1, double lon1, double lat2, double lon2) {
        final int R = 6371;

        double latDistance = Math.toRadians(lat2 - lat1);
        double lonDistance = Math.toRadians(lon2 - lon1);

        double a = Math.sin(latDistance / 2) * Math.sin(latDistance / 2)
                + Math.cos(Math.toRadians(lat1)) * Math.cos(Math.toRadians(lat2))
                * Math.sin(lonDistance / 2) * Math.sin(lonDistance / 2);

        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));
        return R * c;
    }

    public static BigDecimal calculatePrice(Airport depAirport, Airport arrAirport) {
        double distance = calculateDistance(depAirport.getLatitude(), depAirport.getLongitude(),
                arrAirport.getLatitude(), arrAirport.getLongitude());
        return new BigDecimal(distance * 1.5);
    }
}