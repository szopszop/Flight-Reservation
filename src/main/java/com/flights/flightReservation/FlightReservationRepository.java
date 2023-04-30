package com.flights.flightReservation;

import com.flights.flight.Flight;
import com.flights.flightReservation.FlightReservation;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;
import java.util.UUID;

public interface FlightReservationRepository extends JpaRepository<FlightReservation, UUID> {

    List<FlightReservation> findByFlight(Flight flight);

}
