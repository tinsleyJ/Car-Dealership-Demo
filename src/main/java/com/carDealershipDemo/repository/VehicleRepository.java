package com.carDealershipDemo.repository;

import com.carDealershipDemo.entity.Vehicle;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Optional;

@Repository
public interface VehicleRepository extends JpaRepository<Vehicle, Integer> {

    Optional<Vehicle> findByVehicleMake(String vehicle);

    @Query(value = "SELECT DISTINCT vehicle.id, days_on_lot, description, img, kilometers_on_meter, price, vehicle_make, vehicle_model, vehicle_year, date_of_purchase FROM vehicle WHERE vehicle.date_of_purchase < DATE(NOW()) - INTERVAL 120 DAY", nativeQuery = true)
    List<Vehicle> getBiddableVehicles();
    
    List<Vehicle> findAll();
}
