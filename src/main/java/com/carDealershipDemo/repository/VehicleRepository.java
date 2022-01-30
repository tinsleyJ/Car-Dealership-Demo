package com.carDealershipDemo.repository;

import com.carDealershipDemo.entity.Vehicle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface VehicleRepository extends JpaRepository<Vehicle, Integer> {

    Optional<Vehicle> findByVehicleMake(String vehicle);

    Optional<Vehicle> findByVehicleModel(String vehicle);

    List<Vehicle> findAll();
    
}
