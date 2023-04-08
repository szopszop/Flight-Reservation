package com.flights.csv;

import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import com.opencsv.exceptions.CsvException;
import com.opencsv.exceptions.CsvValidationException;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@Component
@AllArgsConstructor
public class CsvReader {
    private final String filePath;
    private final CsvFileFilter filter;

    public List<String[]> readFile() throws IOException, CsvException {
        try (CSVReader reader = new CSVReaderBuilder(new FileReader(filePath))
                .withCSVParser(new CSVParserBuilder().withSeparator(',').withQuoteChar('"').build()).build()) {
            return reader.readAll().stream()
                    .skip(1)
                    .filter(filter::filterLine)
                    .collect(Collectors.toList());
        } catch (CsvValidationException e) {
            throw new RuntimeException(e);
        }
    }
}
