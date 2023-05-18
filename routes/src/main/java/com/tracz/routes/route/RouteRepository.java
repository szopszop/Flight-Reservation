package com.tracz.routes.route;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RouteRepository extends JpaRepository<Route, Long> {

    List<Route> findByAirlineId(Long airlineId);
    List<Route> findBySourceAirportId(Long sourceAirportId);
    List<Route> findByDestinationAirportId(Long destinationAirportId);
}