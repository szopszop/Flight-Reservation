package com.tracz.flightreservation;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/reservations")
@RequiredArgsConstructor
public class ReservationController {

    private final ReservationService reservationService;

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public void save(@RequestBody Reservation reservation) {
        reservationService.saveReservation(reservation);
    }

    @GetMapping("/user/{user-id}")
    public ResponseEntity<List<Reservation>> findAllReservations(@PathVariable("user-id") Integer userId) {
        return ResponseEntity.ok(reservationService.findAllReservationsByUserId(userId));
    }
}
