package com.flights.controllers;

import com.flights.csv.CsvReader;
import com.opencsv.exceptions.CsvException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;

@RestController
@RequestMapping("/")
public class FlightController {

    @Autowired
    CsvReader csvReader;


    @Value("${flightapi.key}")
    private String apiKey;

//    @GetMapping
//    public void getFlightData() throws IOException, InterruptedException {
//        HttpRequest request = HttpRequest.newBuilder()
//                .uri(URI.create("https://airlabs.co/api/v9/ping?api_key=" + apiKey))
//                .method("GET", HttpRequest.BodyPublishers.noBody())
//                .build();
//
//        HttpResponse<String> response = HttpClient.newHttpClient().send(request, HttpResponse.BodyHandlers.ofString());
//
//        System.out.println(response.body());
//    }

    @GetMapping("/file")
    public void get() throws IOException, CsvException {

        System.out.println(csvReader.readFile().size());




    }





}
