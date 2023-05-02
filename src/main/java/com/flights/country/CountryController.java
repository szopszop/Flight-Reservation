package com.flights.country;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

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
        Optional<Country> country = countryService.findById(countryId);
        if (country.isPresent()) {
            return ResponseEntity.ok(country.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }


}
