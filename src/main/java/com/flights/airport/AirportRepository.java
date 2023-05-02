package com.flights.airport;

import com.flights.airport.Airport;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;
import java.util.Optional;
import java.util.Set;
import java.util.UUID;

public interface AirportRepository extends JpaRepository<Airport, Long> {

    Optional<List<Airport>> findByCountryId(Long countryId);
    Optional<Airport> findByIataCode(String iataCode);


}
