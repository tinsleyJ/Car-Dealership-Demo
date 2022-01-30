package com.carDealershipDemo.controller;

import com.carDealershipDemo.entity.User;
import com.carDealershipDemo.repository.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;

@CrossOrigin
@Controller
public class UserController {

    @Autowired
    UserRepository userRepository;

    public UserController(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    @RequestMapping(value = "/register")
    public String registerUser(User user, Model model) {
        model.addAttribute("user", user);
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView addUser(User user, Model model) {
        userRepository.save(user);
        return new ModelAndView("thank-you", "user", new User());
    }

    @RequestMapping("/login")
    public String loginWelcome(Model model) {
        model.addAttribute("user", "Please enter your login details.");
        return "login";
    }

    @RequestMapping(method = RequestMethod.POST)
    public String login(Model model, @ModelAttribute("login") User user) {
        if (user != null && user.getUsername() != null & user.getPassword() != null) {
            if (user.getUsername().equals("username") && user.getPassword().equals("password")) {
                model.addAttribute("msg", user.getUsername());
                return "success";
            } else {
                model.addAttribute("error", "Invalid Credentials");
                return "login";
            }
        } else {
            model.addAttribute("error", "Please fill-in valid Username and password");
            return "login";
        }
    }

    @RequestMapping(value = "/logout")
    public String logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "index";
    }

    @RequestMapping(value = "/findByUsername")
    public User findByUsername(User username) {
        return userRepository.findByUsername(String.valueOf(username));
    }

}
