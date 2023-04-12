package com.flights.exception;

import lombok.extern.slf4j.Slf4j;

import java.util.Optional;
import java.util.function.Function;

@Slf4j
public class MappingExceptionHandler<T> {

    public T handleException(Function<String[], T> mappingFunction, String[] data) {
        try {
            return mappingFunction.apply(data);
        } catch (IllegalArgumentException e) {
            log.error("Error during processing at line: {}. Message: {}", data, e.getMessage(), e);
            return null;
        } catch (Exception e) {
            System.err.printf("Unexpected error during processing at line %s%n", e.getMessage());
        }
        return null;
    }

    public static Optional<Long> parseLongWithHandling(String value) {
        try {
            return Optional.of(Long.parseLong(value));
        } catch (NumberFormatException e) {
            log.error("Error parsing ID: " + value + ". Skipping.");
            return Optional.empty();
        }
    }
}
