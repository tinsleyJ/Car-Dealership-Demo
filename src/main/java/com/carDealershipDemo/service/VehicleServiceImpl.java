package com.carDealershipDemo.service;

import com.carDealershipDemo.entity.Vehicle;
import com.carDealershipDemo.repository.VehicleRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

@Service
public class VehicleServiceImpl implements VehicleService {

    @Autowired
    VehicleRepository vehicleRepository;

    ArrayList<Vehicle> vehicle = new ArrayList<>();

    public VehicleServiceImpl(VehicleRepository vehicleRepository) {
        this.vehicleRepository = vehicleRepository;
    }

    @Override
    public ResponseEntity<byte[]> getImage(Vehicle vehicle) {
        byte[] image = vehicle.getImg();
        return ResponseEntity.ok(image);
    }

    @Override
    public ArrayList<Vehicle> findByMake(String searchTerm) {
        ArrayList<Vehicle> resultList = new ArrayList<>();
        for (Vehicle vehicle : vehicle) {
            if (vehicle.getVehicleMake().equalsIgnoreCase(searchTerm)) {
                resultList.add(vehicle);
            }
        }
        return resultList;
    }

    @Override
    public ArrayList<Vehicle> findByModel(String searchTerm) {
        ArrayList<Vehicle> resultList = new ArrayList<>();
        for (Vehicle vehicle : vehicle) {
            if (vehicle.getVehicleModel().equalsIgnoreCase(searchTerm)) {
                resultList.add(vehicle);
            }
        }
        return resultList;
    }

    @Override
    public ArrayList<Vehicle> findByDescription(String searchTerm) {
        ArrayList<Vehicle> resultList = new ArrayList<>();
        for (Vehicle vehicle : vehicle) {
            if (vehicle.getDescription().equalsIgnoreCase(searchTerm)) {
                resultList.add(vehicle);
            }
        }
        return resultList;
    }

    @Override
    public ArrayList<Vehicle> findByYear(int searchYear) {
        ArrayList<Vehicle> resultList = new ArrayList<>();
        for (Vehicle vehicle : vehicle) {
            if (vehicle.getVehicleYear() >= searchYear) {
                resultList.add(vehicle);
            }
        }
        return resultList;
    }

    @Override
    public ArrayList<Vehicle> findByKilometersOnMeter(int searchKilometers) {
        ArrayList<Vehicle> resultList = new ArrayList<>();
        for (Vehicle vehicle : vehicle) {
            if (vehicle.getKilometersOnMeter() <= searchKilometers) {
                resultList.add(vehicle);
            }
        }
        return resultList;
    }

    @Override
    public ArrayList<Vehicle> findByDaysOnLot(int searchDays) {
        ArrayList<Vehicle> resultList = new ArrayList<>();
        for (Vehicle vehicle : vehicle) {
            if (vehicle.getDaysOnLot() <= searchDays) {
                resultList.add(vehicle);
            }
        }
        return resultList;
    }

    @Override
    public ArrayList<Vehicle> findByPrice(double searchAmount) {
        ArrayList<Vehicle> resultList = new ArrayList<>();
        for (Vehicle vehicle : vehicle) {
            if (vehicle.getPrice() <= searchAmount) {
                resultList.add(vehicle);
            }
        }
        return resultList;
    }

    @Override
    public ArrayList<Vehicle> vehicleSearch(Vehicle vehicle) {
        String make = vehicle.getVehicleMake();
        String model = vehicle.getVehicleModel();
        String description = vehicle.getDescription();
        int year = vehicle.getVehicleYear();
        int kilometers = vehicle.getKilometersOnMeter();
        int daysOnLot = vehicle.getDaysOnLot();
        double price = vehicle.getPrice();

        ArrayList<Vehicle> resultList = new ArrayList<>();

        if (make != null) {
            resultList.addAll(findByMake(make));
        }
        if (model != null) {
            resultList.addAll(findByModel(model));
        }
        if (description != null) {
            resultList.addAll(findByDescription(description));
        }
        if (year >= 1) {
            resultList.addAll(findByYear(year));
        }
        if (kilometers >= 1) {
            resultList.addAll(findByKilometersOnMeter(kilometers));
        }
        if (daysOnLot >= 1) {
            resultList.addAll(findByDaysOnLot(daysOnLot));
        }
        if (price >= 1) {
            resultList.addAll(findByPrice(price));
        }

        return resultList;
    }
}


