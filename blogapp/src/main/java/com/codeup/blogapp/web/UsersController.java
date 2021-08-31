package com.codeup.blogapp.web;

import com.codeup.blogapp.data.User;
import com.codeup.blogapp.data.UserRepository;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping(value = "/api/users", headers = "Accept=application/json")
public class UsersController {

    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    public UsersController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @GetMapping
    private List<User> getUsers() {

        return userRepository.findAll();
    }

    @GetMapping("{id}")
    private User getUserById(@PathVariable Long id) {

        return userRepository.getById(id);

    }

    @GetMapping("/findByUsername")
    private User getByUsername(@RequestParam String username) {
//        if (username.equals("stephen.nguyen15")) {
//            return new User(1L, "stephen.nguyen15", "stephen.nguyen15@yahoo.com", "password", User.Role.USER, posts);
//        }
        return null;
    }

    @GetMapping("/findByEmail")
    private User getByEmail(@RequestParam String email) {
//        if (email.equals("stephen.nguyen15@yahoo.com")) {
//            return new User(1L, "stephen.nguyen15", "stephen.nguyen15@yahoo.com", "password", User.Role.USER, posts);
//        }
        return null;
    }

    @PostMapping
    private void createUser(@RequestBody User newUser) {

        user.setPassword(passwordEncoder.encode(user.getPassword()));
        userRepository.save(newUser);

    }

    @PutMapping({"/{id}"})
    private void updateUser(@PathVariable Long id, @RequestBody User user) {

        userRepository.save(user);

    }

    @PutMapping({"/{id}/updatePassword"})
    private void updatePassword(@PathVariable Long id, @RequestParam(required = false) String oldPassword, @RequestParam String newPassword) {

        userRepository.getById(id).setPassword(newPassword);

    }

    @DeleteMapping({"{id}"})
    private void deleteUser(@PathVariable Long id) {

        userRepository.deleteById(id);

    }

}
