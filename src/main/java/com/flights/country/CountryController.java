package com.flights.country;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

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
    @GetMapping()
    public ResponseEntity<Country> findCountryById(@RequestParam("countryId") Long countryId) {
        Optional<Country> country = countryService.findById(countryId);
        if (country.isPresent()) {
            return ResponseEntity.ok(country.get());
        } else {
            return ResponseEntity.notFound().build();
        }
    }


}
