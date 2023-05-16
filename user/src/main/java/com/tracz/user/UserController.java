package com.tracz.user;

import lombok.RequiredArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/users")
@RequiredArgsConstructor
public class UserController {

    private final UserService userService;

    @PostMapping
    @ResponseStatus(HttpStatus.CREATED)
    public void save(@RequestBody User user) {
        userService.saveUser(user);
    }

    @GetMapping
    public ResponseEntity<List<User>> findAllUsers() {
        return ResponseEntity.ok(userService.findAllUsers());
    }

    @GetMapping("/{user-id}")
    public ResponseEntity<User> findUserById(@PathVariable("user-id") Integer userId) {
        return ResponseEntity.ok(userService.findUserById(userId));
    }

    @GetMapping("/with-reservations/{user-id}")
    public ResponseEntity<FullUserResponse> findUserWithReservations(@PathVariable("user-id") Integer userId) {
        return ResponseEntity.ok(userService.findUserWithReservations(userId));
    }
}
