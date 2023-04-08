package com.flights.csv;

public interface CsvFileFilter {
    boolean filterLine(String[] line);
}
