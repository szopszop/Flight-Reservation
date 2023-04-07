package com.flights.repositories;

import com.flights.entities.Flight;
import com.flights.entities.FlightReservation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface FlightReservationRepository extends JpaRepository<FlightReservation, UUID> {

    List<FlightReservation> findByFlight(Flight flight);
}
