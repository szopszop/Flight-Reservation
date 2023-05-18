package com.tracz.countries.country;

import lombok.AllArgsConstructor;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("api/v1/countries")
@AllArgsConstructor
@CrossOrigin(origins = {"http://localhost:3000/", "https://ochotadariusz.github.io/"}, allowedHeaders = "*", allowCredentials = "true")
public class CountryController {

    private final CountryService countryService;

    @GetMapping("/all")
    public ResponseEntity<List<Country>> findAllCountries() {
        return ResponseEntity.ok(countryService.findAllCountries());
    }

    @GetMapping("/{countryId}")
    public ResponseEntity<FullCountryResponse> findCountryById(@PathVariable("countryId") Long countryId) {
        return ResponseEntity.ok(countryService.findById(countryId));
    }


}