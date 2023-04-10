package com.flights.airport;

import com.flights.airport.Airport;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface AirportRepository extends JpaRepository<Airport, UUID> {

    List<Airport> findByCountry(String country);

}