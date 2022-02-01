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
    public String getRegisterPage(User user, Model model) {
        model.addAttribute("user", user);
        return "register";
    }

    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public ModelAndView processRegistration(User user) {
        userRepository.save(user);
        return new ModelAndView("thank-you", "user", new User());
    }

    @RequestMapping("/login")
    public ModelAndView getLoginPage() {

        return new ModelAndView("login", "Please enter your login details.", new User());
    }

    @RequestMapping(method = RequestMethod.POST)
    public ModelAndView processLogin(Model model, @ModelAttribute("login") User user) {

        String username = user.getUsername();
        String password = user.getPassword();

        if (username != null & user.getPassword() != null) {
            if (username.equals("inputUsername") && password.equals("inputPassword")) {
                model.addAttribute("user", username);
                return new ModelAndView("success");
            } else {
                model.addAttribute("error", "Invalid Credentials");
                return new ModelAndView("login");
            }
        } else {
            model.addAttribute("error", "Please fill-in valid Username and password");
            return new ModelAndView("login");
        }
    }

    @RequestMapping(value = "/logout")
    public String processLogout(HttpServletRequest request) {
        request.getSession().invalidate();
        return "index";
    }

    @RequestMapping(value = "/findByUsername")
    public User findByUsername(User username) {
        return userRepository.findByUsername(String.valueOf(username));
    }

}
