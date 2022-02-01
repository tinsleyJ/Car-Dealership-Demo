package com.carDealershipDemo.controller;

import com.carDealershipDemo.entity.Vehicle;
import com.carDealershipDemo.repository.VehicleRepository;
import com.carDealershipDemo.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.ArrayList;
import java.util.List;

@CrossOrigin
@Controller
public class VehicleController {

    @Autowired
    VehicleRepository vehicleRepository;

    @Autowired
    VehicleService vehicleService;

    public VehicleController(VehicleRepository vehicleRepository, VehicleService vehicleService) {
        this.vehicleRepository = vehicleRepository;
        this.vehicleService = vehicleService;
    }

    @RequestMapping("/add-vehicle")
    public String getAddVehiclePage(Model model, Vehicle vehicle) {
        model.addAttribute("vehicle", vehicle);
        return "add-vehicle";
    }

    @RequestMapping(value = "/add-vehicle", method = RequestMethod.POST)
    public ModelAndView processAddVehicle(Vehicle vehicle) {
        vehicleRepository.save(vehicle);
        return new ModelAndView("thank-you", "vehicle", new Vehicle());
    }

    @RequestMapping("/vehicle-list")
    public String getAllVehiclesPage(Model model) {
        List<Vehicle> list = vehicleRepository.findAll();
        model.addAttribute("results", list);
        return "vehicle-list";
    }

    @RequestMapping("/search")
    public String getSearchPage(Model model, Vehicle vehicle) {
        model.addAttribute("results", vehicle);
        return "search";
    }

    @RequestMapping(value = "/search", method = RequestMethod.POST)
    public String processSearch(@ModelAttribute("searchTerm") Model model, Vehicle vehicle) {
        ArrayList<Vehicle> list = vehicleService.vehicleSearch(vehicle);
        model.addAttribute("results", list);
        return ("vehicle-list");
    }

    @RequestMapping(value = "/biddable")
    public ModelAndView biddableVehicles(Model model) {
        List<Vehicle> list = vehicleRepository.getBiddableVehicles();
        model.addAttribute("results", list);
        return new ModelAndView("vehicle-list", "results", new Vehicle());
    }
}



