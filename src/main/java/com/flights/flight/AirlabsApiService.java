package com.flights.flight;

import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.HttpEntity;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpMethod;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class AirlabsApiService {

    @Value("${flight.api.key}")
    private String apiKey;

    private static final String API_URL = "https://airlabs.co/api/v9/";
    private static final String SCHEDULES = "schedules?dep_iata=";

    public ResponseEntity<String> findUpcomingFlights(String iataCode) {
        RestTemplate restTemplate = new RestTemplate();
        HttpHeaders headers = new HttpHeaders();
        headers.set("X-API-KEY", apiKey);
        HttpEntity<String> entity = new HttpEntity<>(headers);
        String url = API_URL + SCHEDULES + iataCode;
        return restTemplate.exchange(url, HttpMethod.GET, entity, String.class);
    }
}
