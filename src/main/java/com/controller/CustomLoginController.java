package com.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class CustomLoginController {
    @GetMapping("/showCustomLoginPage")
    public String login(Model model){
        return "auth/login";
    }
}
