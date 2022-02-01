package com.carDealershipDemo.service;

import com.carDealershipDemo.entity.Vehicle;
import org.springframework.http.ResponseEntity;

import java.util.ArrayList;

public interface VehicleService {


    ResponseEntity<byte[]> getImage(Vehicle vehicle);

    ArrayList<Vehicle> findByModel(String searchTerm);

    ArrayList<Vehicle> findByDescription(String searchTerm);

    ArrayList<Vehicle> findByYear(int searchTerm);

    ArrayList<Vehicle> findByKilometersOnMeter(int searchKilometers);

    ArrayList<Vehicle> findByDaysOnLot(int searchDays);

    ArrayList<Vehicle> findByMake(String searchTerm);

    ArrayList<Vehicle> findByPrice(double searchAmount);

    public ArrayList<Vehicle> vehicleSearch(Vehicle vehcile);

}
