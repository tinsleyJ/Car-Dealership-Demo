package com.carDealershipDemo.controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

@CrossOrigin
@RestController
public class WelcomeController {

    @RequestMapping(value = "/")
    public ModelAndView home() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/index")
    public ModelAndView index() {
        return new ModelAndView("index");
    }

    @RequestMapping(value = "/thank-you")
    public ModelAndView thankYou() {
        return new ModelAndView("thank-you");
    }

    @RequestMapping(value = "/success")
    public ModelAndView success() {
        return new ModelAndView("success");
    }

}
