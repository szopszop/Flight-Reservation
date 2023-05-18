package com.tracz.countries.country;


import com.tracz.countries.client.Airline;
import com.tracz.countries.client.AirlineClient;
import com.tracz.countries.client.Airport;
import com.tracz.countries.client.AirportClient;
import jakarta.ws.rs.NotFoundException;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class CountryService {

    private final CountryRepository countryRepository;
    private final AirlineClient airlineClient;
    private final AirportClient airportClient;

    public FullCountryResponse findById(Long id) {
        Country country = countryRepository.findById(id).orElseThrow(() -> new NotFoundException("Country not found"));
        List<Airport> airports = airportClient.findAllAirportsByCountryId(id);
        List<Airline> airlines = airlineClient.findAllAirlinesByCountryId(id);
        return FullCountryResponse.builder()
                .id(country.getId())
                .name(country.getName())
                .longitude(country.getLongitude())
                .latitude(country.getLatitude())
                .airports(airports)
                .airlines(airlines)
                .build();
    }
    public List<Country> findAllCountries() {
        return countryRepository.findAll();
    }


}