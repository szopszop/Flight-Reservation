package com.tracz.countries;


import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
@AllArgsConstructor
public class CountryService {

    private final CountryRepository countryRepository;

    public Optional<Country> findById(Long id) {
        return countryRepository.findById(id);
    }
    public List<Country> findAllCountries() {
        return countryRepository.findAll();
    }

}