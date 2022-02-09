package com.carDealershipDemo.service;

import com.carDealershipDemo.entity.Vehicle;
import com.carDealershipDemo.repository.VehicleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class VehicleServiceImpl implements VehicleService {

    @Autowired
    VehicleRepository vehicleRepository;

    public VehicleServiceImpl(VehicleRepository vehicleRepository) {
        this.vehicleRepository = vehicleRepository;
    }

    @Override
    public Iterable<Vehicle> listVehiclesByMake(String vehicleMake) {
        return vehicleRepository.findVehicleByVehicleMake(vehicleMake);
    }

    @Override
    public Iterable<Vehicle> listVehiclesByModel(String vehicleModel) {
        return vehicleRepository.findVehicleByVehicleModel(vehicleModel);
    }

    @Override
    public Iterable<Vehicle> listVehiclesByYear(int vehicleYear) {
        return vehicleRepository.findVehicleByVehicleYearAfter(vehicleYear);
    }

    @Override
    public Iterable<Vehicle> listVehiclesByKilometers(int vehicleKilometers) {
        return vehicleRepository.findVehicleByKilometersOnMeterBefore(vehicleKilometers);
    }

    @Override
    public Iterable<Vehicle> listVehiclesByPrice(double vehiclePrice) {
        return vehicleRepository.findVehicleByPriceBefore(vehiclePrice);
    }

    @Override
    public Iterable<Vehicle> listVehiclesById(int id) {
        return vehicleRepository.findVehicleById(id);
    }

}


