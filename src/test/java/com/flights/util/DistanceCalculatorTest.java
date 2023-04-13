package com.flights.util;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class DistanceCalculatorTest {


    private static final double TOLERANCE = 1;

    @Test
    public void testCalculateDistance() {
        double distance = DistanceCalculator.calculateDistance(0, 0, 0, -10);
        assertEquals(1111, distance, TOLERANCE);
    }

    @Test
    public void testCalculateDistanceSamePoint() {
        double distance = DistanceCalculator.calculateDistance(0,0,0,0);
        assertEquals(0.0, distance, TOLERANCE);
    }
}
