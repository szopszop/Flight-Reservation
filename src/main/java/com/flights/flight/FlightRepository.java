package com.flights.flight;

import com.flights.flightReservation.FlightReservation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.time.LocalDateTime;
import java.util.Collection;
import java.util.List;
import java.util.Optional;
import java.util.UUID;

public interface FlightRepository extends JpaRepository<Flight, UUID> {

    List<Flight> findByReservations(FlightReservation reservation);
    Optional<Flight> findByFlightIata(String flightIata);
    void deleteByDepartureTimeBefore(LocalDateTime dateTime);

}
