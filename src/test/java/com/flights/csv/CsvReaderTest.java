package com.flights.csv;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.junit.jupiter.MockitoExtension;

import java.io.FileNotFoundException;
import java.util.List;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

@ExtendWith(MockitoExtension.class)
class CsvReaderTest {

    @InjectMocks
    private CsvReader csvReader;

    private String validCsvFilePath;
    private String incorrectFormatCsvFilePath;
    private String invalidCsvFilePath;

    @BeforeEach
    public void setUp() {
        validCsvFilePath = "src/test/resources/test-simple.csv";
        incorrectFormatCsvFilePath = "src/test/resources/test-incorrectFormat.csv";
        invalidCsvFilePath = "src/test/resources/non_existing_file.csv";
    }

    @Test
    void testReadFile_validCsvFile() {
        List<String[]> result = csvReader.readFile(validCsvFilePath);

        assertEquals(2, result.size());
        assertEquals(3, result.get(0).length);
    }

    @Test
    void testReadFile_invalidCsvFile() {
        assertThrows(RuntimeException.class, () -> csvReader.readFile(invalidCsvFilePath));
    }

    @Test
    void testReadFile_incorrectFormatCsvFile() {
        assertThrows(RuntimeException.class, () -> csvReader.readFile(incorrectFormatCsvFilePath));
    }
    @Test
    void testReadFile_emptyCsvFile() {
        assertThrows(RuntimeException.class, () -> csvReader.readFile(incorrectFormatCsvFilePath));
    }





}