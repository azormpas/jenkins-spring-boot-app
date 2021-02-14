package com.example.carshop.controllers;

import lombok.AllArgsConstructor;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.Arrays;
import java.util.List;

@RestController
@RequestMapping("/car")
@AllArgsConstructor
public class CarController {

    @GetMapping("/get/all")
    public List<String> getCars() {
        return Arrays.asList("Ferrari", "Mercedes", "Fiat");
    }

}
