package com.tracz.airports.airport;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface AirportRepository extends JpaRepository<Airport, Long> {

    Optional<List<Airport>> findByCountryId(Long countryId);
    Optional<Airport> findByIataCode(String iataCode);


}