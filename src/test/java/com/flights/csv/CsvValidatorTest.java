package com.flights.csv;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class CsvValidatorTest {
    List<String[]> records;

    @BeforeEach
    void setUp() {
       records = new ArrayList<>();
    }

    @Test
    void testValidate_validCsvData() {
        records.add(new String[]{"1", "A", "B"});
        records.add(new String[]{"2", "A", "B"});

        assertDoesNotThrow(() -> CsvValidator.validate(records));
    }

    @Test
    void testValidate_emptyCsvData() {
        List<String[]> records = new ArrayList<>();
        assertThrows(IllegalArgumentException.class, () -> CsvValidator.isEmpty(records));
    }

    @Test
    void testValidate_invalidCsvData() {
        List<String[]> records = new ArrayList<>();
        records.add(new String[]{"1", "A", "B"});
        records.add(new String[]{"2", "B"});

        assertThrows(IllegalArgumentException.class, () -> CsvValidator.isFormValid(records));
    }
}