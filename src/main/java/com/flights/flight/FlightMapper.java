package com.flights.flight;

import com.flights.airport.AirportMapper;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Component;

@Component
@AllArgsConstructor
public class FlightMapper {

    private final AirportMapper airportMapper;

    public FlightDto mapToFlightDto(Flight flight) {
        return FlightDto.builder()
                .id(flight.getId())
                .departureAirport(airportMapper.mapToAirportDto(flight.getDepartureAirport()))
                .arrivalAirport(airportMapper.mapToAirportDto(flight.getArrivalAirport()))
                .departureTime(flight.getDepartureTime())
                .departureTimeUtc(flight.getDepartureTimeUtc())
                .arrivalTime(flight.getArrivalTime())
                .arrivalTimeUtc(flight.getArrivalTimeUtc())
                .airlineIata(flight.getAirlineIata())
                .flightIata(flight.getFlightIata())
                .flightNumber(flight.getFlightNumber())
                .depTerminal(flight.getDepTerminal())
                .depGate(flight.getDepGate())
                .status(flight.getStatus())
                .duration(flight.getDuration())
                .delayed(flight.getDelayed())
                .aircraftIcao(flight.getAircraftIcao())
                .price(flight.getPrice())
                .reservations(flight.getReservations())
                .build();
    }

    public Flight mapToFlight(FlightDto flightDto) {
        return Flight.builder()
                .id(flightDto.getId())
                .departureAirport(airportMapper.mapToAirport(flightDto.getDepartureAirport()))
                .arrivalAirport(airportMapper.mapToAirport(flightDto.getArrivalAirport()))
                .departureTime(flightDto.getDepartureTime())
                .departureTimeUtc(flightDto.getDepartureTimeUtc())
                .arrivalTime(flightDto.getArrivalTime())
                .arrivalTimeUtc(flightDto.getArrivalTimeUtc())
                .airlineIata(flightDto.getAirlineIata())
                .flightIata(flightDto.getFlightIata())
                .flightNumber(flightDto.getFlightNumber())
                .depTerminal(flightDto.getDepTerminal())
                .depGate(flightDto.getDepGate())
                .status(flightDto.getStatus())
                .duration(flightDto.getDuration())
                .delayed(flightDto.getDelayed())
                .aircraftIcao(flightDto.getAircraftIcao())
                .price(flightDto.getPrice())
                .reservations(flightDto.getReservations())
                .build();
    }

}
