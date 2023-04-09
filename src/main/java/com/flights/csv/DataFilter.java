package com.flights.csv;

import java.util.List;
import java.util.stream.Collectors;

public class DataFilter {

    public List<String[]> doFilter(List<String[]> data, int row, String filter) {
        return data.stream()
                .filter(line -> filter.equals(line[row]))
                .collect(Collectors.toList());
    }
}
