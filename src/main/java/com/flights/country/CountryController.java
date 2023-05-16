package com.flights.country;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/country")
@AllArgsConstructor
@CrossOrigin(origins = {"http://localhost:3000/", "https://ochotadariusz.github.io/flight-reservations-react/"}, allowedHeaders = "*", allowCredentials = "true")
public class CountryController {

    private final CountryService countryService;
    @GetMapping("/all")
    public ResponseEntity<List<Country>> findAllCountries() {
        return ResponseEntity.ok(countryService.findAllCountries());
    }
    @GetMapping("/{countryId}")
    public ResponseEntity<Country> findCountryById(@PathVariable("countryId") Long countryId) {
        return countryService.findById(countryId)
                .map(ResponseEntity::ok)
                .orElseGet(() -> ResponseEntity.notFound().build());
    }


}
