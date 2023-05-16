package com.tracz.user;

import lombok.*;

import java.util.List;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Builder
public class FullUserResponse {
    private String firstname;
    private String lastname;
    private String email;
    private List<Reservation> reservations;
}
