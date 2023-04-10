package com.flights.csv;

import com.opencsv.CSVParserBuilder;
import com.opencsv.CSVReader;
import com.opencsv.CSVReaderBuilder;
import com.opencsv.exceptions.CsvException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Component;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.List;
import java.util.stream.Collectors;

@Slf4j
@Component
public class CsvReader {

    public List<String[]> readFile(String filePath) {
        List<String[]> records;
        try {
            records = readCsvFile(filePath);
            CsvValidator.validate(records);

        } catch (IOException | CsvException e) {
            log.error("Failed to read CSV file: {}", filePath, e);
            throw new RuntimeException("Failed to read CSV file", e);
        }
        return records;
    }

    private List<String[]> readCsvFile(String filePath) throws IOException, CsvException {
        try (CSVReader reader = new CSVReaderBuilder(new FileReader(filePath))
                .withCSVParser(new CSVParserBuilder().withSeparator(',').withQuoteChar('"').build()).build()) {
            return reader.readAll().stream()
                    .skip(1)
                    .collect(Collectors.toList());
        }
    }
}
