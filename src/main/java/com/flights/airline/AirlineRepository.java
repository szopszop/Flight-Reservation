package com.flights.airline;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AirlineRepository extends JpaRepository<Airline, Long> {

    List<Airline> findByCountry(String country);
}
