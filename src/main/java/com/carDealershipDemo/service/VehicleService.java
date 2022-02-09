package com.carDealershipDemo.service;

import com.carDealershipDemo.entity.Vehicle;

public interface VehicleService {

    Iterable<Vehicle> listVehiclesByMake(String vehicleMake);

    Iterable<Vehicle> listVehiclesByModel(String vehicleModel);

    Iterable<Vehicle> listVehiclesByYear(int vehicleYear);

    Iterable<Vehicle> listVehiclesByKilometers(int vehicleKilometers);

    Iterable<Vehicle> listVehiclesByPrice(double vehiclePrice);

    Iterable<Vehicle> listVehiclesById(int id);
}
