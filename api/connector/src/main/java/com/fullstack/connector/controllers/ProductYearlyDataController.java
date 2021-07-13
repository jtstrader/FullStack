package com.fullstack.connector.controllers;

import com.fullstack.connector.models.ProductYearlyData;
import com.fullstack.connector.repositories.ProductYearlyDataRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/gloyearprodudat")
@CrossOrigin
public class ProductYearlyDataController {
    @Autowired
    private ProductYearlyDataRepository productYearlyDataRepository;

    @GetMapping // full list
    public List<ProductYearlyData> list() {
        return productYearlyDataRepository.findAll();
    }

    @GetMapping // get specific sale by sale id
    @RequestMapping("{id}")
    public ProductYearlyData get(@PathVariable Long id) {
        return productYearlyDataRepository.getById(id);
    }

    @PostMapping // create new sale
    public ProductYearlyData create(@RequestBody final ProductYearlyData productYearlyData) {
        return productYearlyDataRepository.saveAndFlush(productYearlyData);
    }
}
