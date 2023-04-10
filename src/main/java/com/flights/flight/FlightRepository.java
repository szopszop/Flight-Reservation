package com.flights.flight;

import com.flights.flightReservation.FlightReservation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface FlightRepository extends JpaRepository<Flight, UUID> {

    List<Flight> findByReservations(FlightReservation reservation);

}