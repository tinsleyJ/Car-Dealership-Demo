package com.carDealershipDemo.repository;

import com.carDealershipDemo.entity.Vehicle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface VehicleRepository extends JpaRepository<Vehicle, Integer> {

    List<Vehicle> findAll();

    Iterable<Vehicle> findVehicleByVehicleMake(String vehicleMake);

    Iterable<Vehicle> findVehicleByVehicleModel(String vehicleModel);

    Iterable<Vehicle> findVehicleByVehicleYearAfter(int vehicleYear);

    Iterable<Vehicle> findVehicleByKilometersOnMeterBefore(int vehicleKilometers);

    Iterable<Vehicle> findVehicleByPriceBefore(double vehiclePrice);

    Iterable<Vehicle> findVehicleById(int id);
}

