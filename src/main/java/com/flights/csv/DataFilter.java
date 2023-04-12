package com.flights.csv;

import org.springframework.stereotype.Component;

import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Component
public class DataFilter {

    public List<String[]> doFilter(List<String[]> data, int column, String filter) {
        return data.stream()
                .filter(line -> filter.equals(line[column]))
                .collect(Collectors.toList());
    }

    public List<String[]> doFilter(List<String[]> data, int column, Set<String> keys) {
        return data.stream()
                .filter(row -> keys.contains(row[column]))
                .collect(Collectors.toList());
    }

    public List<String[]> doFilter2(List<String[]> data, int column, Set<Long> keys) {
        return data.stream()
                .filter(row -> keys.contains(row[column]))
                .collect(Collectors.toList());
    }
    public Set<String> getKeys(List<String[]> data, int column) {
        return data.stream()
                .map(line -> line[column])
                .collect(Collectors.toSet());
    }

    public List<String[]> filterByIataAndIcao(List<String[]> data, int iataColumn, int icaoColumn) {
        return data.stream()
                .filter(line -> hasValue(line, iataColumn) && hasValue(line, icaoColumn))
                .collect(Collectors.toList());
    }
    private boolean hasValue(String[] line, int column) {
        return line[column] != null && !line[column].isEmpty() && !line[column].equals("\\N");
    }
}
