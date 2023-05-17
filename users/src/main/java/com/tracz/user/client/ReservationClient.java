package com.tracz.user.client;

import com.tracz.user.Reservation;
import org.springframework.cloud.openfeign.FeignClient;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@FeignClient(name = "reservation-service", url = "${application.config.reservations-url}")
public interface ReservationClient {

    @GetMapping("/user/{user-id}")
    List<Reservation> findAllReservationsByUserId(@PathVariable("user-id") Integer userId);
}
