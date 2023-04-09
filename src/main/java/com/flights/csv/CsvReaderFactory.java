package com.flights.csv;


import org.springframework.stereotype.Component;

@Component
public class CsvReaderFactory {

    public CsvReader createReader() {
        return new CsvReader();
    }
}
