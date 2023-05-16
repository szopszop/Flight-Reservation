package com.tracz.user;

import com.tracz.user.client.ReservationClient;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@RequiredArgsConstructor
public class UserService {

    private final UserRepository userRepository;
    private final ReservationClient reservationClient;


    public void saveUser(User user) {
        userRepository.save(user);
    }

    public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    public User findUserById(Integer userId) {
        return userRepository.findById(userId).orElse(User.builder()
                .firstname("NOT_FOUND")
                .lastname("NOT_FOUND")
                .email("NOT_FOUND")
                .build());
    }

    public FullUserResponse findUserWithReservations(Integer userId) {
        var user = userRepository.findById(userId)
                .orElse(User.builder()
                        .firstname("NOT_FOUND")
                        .lastname("NOT_FOUND")
                        .email("NOT_FOUND")
                        .build());

        var reservations = reservationClient.findAllReservationsByUserId(userId);
        return FullUserResponse.builder()
                .firstname(user.getFirstname())
                .lastname(user.getLastname())
                .email(user.getEmail())
                .reservations(reservations)
                .build();
    }
}
