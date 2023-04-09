package com.flights.csv;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class DataFilter {

    public List<String[]> doFilter(List<String[]> data, int column, String filter) {
        return data.stream()
                .filter(line -> filter.equals(line[column]))
                .collect(Collectors.toList());
    }
    public Set<String> getKeys(List<String[]> data, int column) {
        return data.stream()
                .map(line -> line[column])
                .collect(Collectors.toSet());
    }


}
