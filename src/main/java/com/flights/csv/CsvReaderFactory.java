package com.flights.csv;


public class CsvReaderFactory {

    public CsvReader createReader(String filePath, CsvFileFilter filter) {
        return new CsvReader(filePath, filter);
    }
}
