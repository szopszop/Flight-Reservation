package com.flights.util;

public class Validator {

    public static boolean isValidValue(String str) {
        return str != null && !str.trim().isEmpty() && !str.equals("\\N");
    }
}
