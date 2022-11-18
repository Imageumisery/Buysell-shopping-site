package com.example.buysell1.controllers;

import com.example.buysell1.models.User;
import com.example.buysell1.services.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.ArrayList;
import java.util.List;

@Controller
@RequiredArgsConstructor
public class UserController {
    private final UserService userService;

    @GetMapping("/login")
    public String login(Model model) {
        return "login";
    }

    @GetMapping("/registration")
    public String registration() {
        return "registration";
    }

    @PostMapping("/registration")
    public String createUser(@RequestParam(value = "isAdmin", required = false) String isAdmin,User user, Model model) {
        model.addAttribute("isAdmin", user.isAdmin());

        if (!userService.createUser(user, isAdmin)) {
            model.addAttribute("errorMessage", "User with email" + user.getEmail() + "is already exists");
                    return "registration";
        }
        return "redirect:/login";
    }

    @GetMapping("/user/{user}")
    public String userInfo(@PathVariable("user") User user, Model model) {
        model.addAttribute("user", user);
        model.addAttribute("products", user.getProducts());
        return "user-info";
    }
}
