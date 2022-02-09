package com.carDealershipDemo.controller;

import com.carDealershipDemo.entity.Vehicle;
import com.carDealershipDemo.repository.VehicleRepository;
import com.carDealershipDemo.service.VehicleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@CrossOrigin
@Controller
public class VehicleController {

    VehicleRepository vehicleRepository;
    VehicleService vehicleService;

    @Autowired
    public VehicleController(VehicleService vehicleService, VehicleRepository vehicleRepository) {
        this.vehicleRepository = vehicleRepository;
        this.vehicleService = vehicleService;
    }

    @GetMapping("/add-vehicle")
    public String getAddVehiclePage(Model model, Vehicle vehicle) {
        model.addAttribute("vehicle", vehicle);
        return "add-vehicle";
    }

    @PostMapping("/add-vehicle")
    public ModelAndView processAddVehicle(Vehicle vehicle) {
        vehicleRepository.save(vehicle);
        return new ModelAndView("thank-you", "vehicle", new Vehicle());
    }

    @GetMapping("/vehicle-list")
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

    @GetMapping("/vehicle/{vehicleId}")
    public String getVehiclePage(@RequestParam(value = "vehicleId", required = false) int id, Model model) {
        model.addAttribute("results", vehicleService.listVehiclesById(id));
        return "vehicle";
    }

    @GetMapping("/search/make/{vehicleMake}")
    public String performVehicleSearchByMake(@RequestParam(value = "vehicleMake", required = false) String vehicleMake, Model model) {
        model.addAttribute("results", vehicleService.listVehiclesByMake(vehicleMake));
        return "vehicle-list";
    }

    @GetMapping("/search/model/{vehicleModel}")
    public String performVehicleSearchByModel(@RequestParam(value = "vehicleModel", required = false) String vehicleModel, Model model) {
        model.addAttribute("results", vehicleService.listVehiclesByModel(vehicleModel));
        return "vehicle-list";
    }

    @GetMapping("/search/year/{vehicleYear}")
    public String performVehicleSearchByYear(@RequestParam(value = "vehicleYear", required = false) int vehicleYear, Model model) {
        model.addAttribute("results", vehicleService.listVehiclesByYear(vehicleYear));
        return "vehicle-list";
    }

    @GetMapping("/search/kilometers/{vehicleKilometers}")
    public String performVehicleSearchByKilometers(@RequestParam(value = "vehicleKilometers", required = false) int vehicleKilometers, Model model) {
        model.addAttribute("results", vehicleService.listVehiclesByKilometers(vehicleKilometers));
        return "vehicle-list";
    }

    @GetMapping("/search/price/{vehiclePrice}")
    public String performVehicleSearchByPrice(@RequestParam(value = "vehiclePrice", required = false) double vehiclePrice, Model model) {
        model.addAttribute("results", vehicleService.listVehiclesByPrice(vehiclePrice));
        return "vehicle-list";
    }

}



