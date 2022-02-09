package com.carDealershipDemo.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.format.annotation.DateTimeFormat;

import javax.persistence.*;
import java.util.Date;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "vehicle")
public class Vehicle {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "vehicle_year")
    private int vehicleYear;

    @Column(name = "vehicle_make")
    private String vehicleMake;

    @Column(name = "vehicle_model")
    private String vehicleModel;

    @Column(name = "kilometers_on_meter")
    private int kilometersOnMeter;

    @Column(name = "price")
    private double price;

    @Column(name = "img")
    private byte[] img;

    @Column(name = "description")
    private String description;

    @Column(name = "date_of_purchase")
    @DateTimeFormat(pattern = "dd.MM.yyyy")
    private Date dateOfPurchase;

    @Column(name = "days_on_lot")
    private int daysOnLot;

    public int getVehicleYear() {
        return vehicleYear;
    }

    public void setVehicleYear(int vehicleYear) {
        this.vehicleYear = vehicleYear;
    }

    public String getVehicleMake() {
        return vehicleMake;
    }

    public void setVehicleMake(String vehicleMake) {
        this.vehicleMake = vehicleMake;
    }

    public String getVehicleModel() {
        return vehicleModel;
    }

    public void setVehicleModel(String vehicleModel) {
        this.vehicleModel = vehicleModel;
    }

    public int getKilometersOnMeter() {
        return kilometersOnMeter;
    }

    public void setKilometersOnMeter(int kilometersOnMeter) {
        this.kilometersOnMeter = kilometersOnMeter;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public byte[] getImg() {
        return img;
    }

    public void setImg(byte[] img) {
        this.img = img;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Date getDateOfPurchase() {
        return dateOfPurchase;
    }

    public void setDateOfPurchase(Date dateOfPurchase) {
        this.dateOfPurchase = dateOfPurchase;
    }

    public int getDaysOnLot() {
        return daysOnLot;
    }

    public void setDaysOnLot(int daysOnLot) {
        this.daysOnLot = daysOnLot;
    }

}
