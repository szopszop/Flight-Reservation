package com.tracz.flights.flight;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface FlightRepository extends JpaRepository<Flight, UUID> {

    Optional<Flight> findByFlightIata(String flightIata);
    void deleteByDepartureTimeBefore(LocalDateTime dateTime);

    @Query("SELECT f FROM Flight f WHERE f.flightIata = :iataCode AND f.departureTime > :currentTime")
    List<Flight> findUpcomingFlights(String iataCode, LocalDateTime currentTime);
}