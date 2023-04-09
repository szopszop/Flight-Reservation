package com.flights.csv;

import org.springframework.stereotype.Component;

@Component
public class DataFilterFactory {
    public DataFilter createFilter() {
        return new DataFilter();
    }
}
