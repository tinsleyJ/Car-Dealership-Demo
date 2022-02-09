package com.carDealershipDemo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@CrossOrigin
@Controller
public class WelcomeController {

    @RequestMapping("/")
    public String home() {
        return "index";
    }

    @RequestMapping("/index")
    public String index() {
        return "index";
    }

    @RequestMapping("/thank-you")
    public String thankYou() {
        return "thank-you";
    }

    @RequestMapping("/success")
    public String success() {
        return "success";
    }

}
