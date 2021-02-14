package com.example.carshop.services;

import com.example.carshop.entities.Car;
import com.example.carshop.repositories.CarRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import javax.annotation.PostConstruct;

@Service
@AllArgsConstructor
public class CarService {

    private final CarRepository carRepository;

    @PostConstruct
    public void init() {
        Car car = Car.builder().name("Mercedes").model("A Class").cost(35000).build();
        save(car);
    }

    public void save(Car car) {
        carRepository.save(car);
    }
}
