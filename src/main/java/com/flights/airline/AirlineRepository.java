package com.flights.airline;

import com.flights.airport.Airline;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface AirlineRepository extends JpaRepository<Airline, Long> {

    List<Airline> findByCountry(String country);
}
