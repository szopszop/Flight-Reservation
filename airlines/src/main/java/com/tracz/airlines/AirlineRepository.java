package com.tracz.airlines;


import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.Optional;

public interface AirlineRepository extends JpaRepository<Airline, Long> {

    Optional<List<Airline>> findByCountryId(Long countryId);
}