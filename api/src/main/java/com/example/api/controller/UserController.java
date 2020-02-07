package com.example.api.controller;

import java.util.List;

import javax.validation.Valid;

import com.example.api.entity.User;
import com.example.api.repository.UserRepository;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

@CrossOrigin
@RestController
@RequestMapping("/api/users")
public class UserController {

    @Autowired
    private UserRepository userRepository;

    @GetMapping("")
    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    @GetMapping("/{id}")
    public User getUser(@PathVariable(value = "id") long id) {
        return userRepository.findById(id).orElseThrow(
            () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "User does not exist")
        );
    }

    @PostMapping("")
    @ResponseStatus(value = HttpStatus.CREATED)
    public User createUser(@Valid @RequestBody User User) {
        return userRepository.save(User);
    }

    @PutMapping("/{id}")
    public User updateUser(
        @Valid @RequestBody User newUser,
        @PathVariable(value = "id") long id
    ) {
        User User = userRepository.findById(id).orElseThrow(
            () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "User does not exist")
        );
        if (newUser.getId() != 0 && newUser.getId() != id) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "User id does not match requested resource id");
        }
        User.setName(newUser.getName());
        User.setEmail(newUser.getEmail());
        return userRepository.save(User);
    }

    @DeleteMapping("/{id}")
    @ResponseStatus(value = HttpStatus.NO_CONTENT)
    public void deleteUser(@PathVariable(value = "id") long id) {
        userRepository.findById(id).orElseThrow(
            () -> new ResponseStatusException(HttpStatus.NOT_FOUND, "User does not exist")
        );
        userRepository.deleteById(id);
    }
}
