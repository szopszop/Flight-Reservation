package com.flights.csv;

import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class CsvValidator {

    public static void validate(List<String[]> records) {
        isEmpty(records);
        isFormValid(records);
    }

    public static void isEmpty(List<String[]> records) {
        if (records == null || records.isEmpty()) {
            throw new IllegalArgumentException("No records found in the CSV file.");
        }
    }
    public static void isFormValid(List<String[]> records) {
        int expectedLength = records.get(0).length;
        if (records.stream().anyMatch(line -> line.length != expectedLength)) {
            throw new IllegalArgumentException("Not all CSV lines have the same length");
        }
    }
}




