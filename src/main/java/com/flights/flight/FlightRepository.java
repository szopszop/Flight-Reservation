package com.flights.flight;

import com.flights.flightReservation.FlightReservation;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface FlightRepository extends JpaRepository<Flight, UUID> {

    List<Flight> findByReservations(FlightReservation reservation);
    Optional<Flight> findByFlightIata(String flightIata);
    void deleteByDepartureTimeBefore(LocalDateTime dateTime);

    @Query("SELECT f FROM Flight f WHERE f.departureAirport.iataCode = :iataCode AND f.departureTime > :currentTime")
    List<Flight> findUpcomingFlights(String iataCode, LocalDateTime currentTime);
}
