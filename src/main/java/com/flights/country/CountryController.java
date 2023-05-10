package com.flights.country;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("api/v1/country")
@AllArgsConstructor
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
