package com.tracz.flightreservation;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class ReservationService {

    private final ReservationRepository reservationRepository;


    public void saveReservation(Reservation reservation) {
        reservationRepository.save(reservation);
    }

    public List<Reservation> findAllReservationsByUserId(Integer userId) {
        return reservationRepository.findAllByUserId(userId);
    }

}
