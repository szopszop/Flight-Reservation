package com.flights.flight;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.*;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.net.URI;
import java.net.http.HttpClient;
import java.net.http.HttpRequest;
import java.net.http.HttpResponse;

@Service
public class AirlabsApiService {

    @Value("${flight.api.key}")
    private String apiKey;

    private static final String API_URL = "https://airlabs.co/api/v9/";
    private static final String SCHEDULES = "schedules?dep_iata=";
    private static final String keyVariable = "&api_key=";


    public ResponseEntity<String> findUpcomingFlights(String iataCode) {
        try {
            HttpClient client = HttpClient.newHttpClient();
            HttpRequest request = HttpRequest.newBuilder()
                    .uri(URI.create(API_URL + SCHEDULES + iataCode + keyVariable + apiKey
                    ))
                    .build();
            HttpResponse<String> response = client.send(request, HttpResponse.BodyHandlers.ofString());

            return ResponseEntity.status(response.statusCode()).body(response.body());
        } catch (IOException | InterruptedException e) {
            return ResponseEntity.status(HttpStatus.NOT_FOUND).build();
        }

    }
}
