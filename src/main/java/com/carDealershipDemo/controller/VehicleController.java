package com.carDealershipDemo.controller;

import com.carDealershipDemo.entity.Vehicle;
import com.carDealershipDemo.repository.VehicleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import java.util.List;
import java.util.Optional;

@CrossOrigin
@Controller
public class VehicleController {

    @Autowired
    VehicleRepository vehicleRepository;

    public VehicleController(VehicleRepository vehicleRepository) {
        this.vehicleRepository = vehicleRepository;
    }

    @RequestMapping(value = "/add-vehicle", method = RequestMethod.POST)
    public String addVehicle(Vehicle vehicle) {
        vehicleRepository.save(vehicle);
        return "thank-you";
    }

    @RequestMapping(value = "/get-all-vehicles")
    public String getAllVehicles(Model model) {
        List<Vehicle> list = vehicleRepository.findAll();
        model.addAttribute("vehicles", list);
        return "vehicle-list";
    }

    @RequestMapping(value = "/find-vehicle-by-make")
    public Optional<Vehicle> findVehicleByMake(String vehicle) {
        return vehicleRepository.findByVehicleMake(vehicle);
    }

    @RequestMapping(value = "/find-vehicle-by-model")
    public Optional<Vehicle> findVehicleByModel(String vehicle) {
        return vehicleRepository.findByVehicleModel(vehicle);
    }
}



