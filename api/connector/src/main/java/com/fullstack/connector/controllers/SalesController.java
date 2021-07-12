package com.fullstack.connector.controllers;

import com.fullstack.connector.models.Sale;
import com.fullstack.connector.repositories.SalesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/sales")
@CrossOrigin
public class SalesController {
    @Autowired
    private SalesRepository salesRepository;

    @GetMapping // full list
    public List<Sale> list() {
        return salesRepository.findAll();
    }

    @GetMapping // get specific sale by sale id
    @RequestMapping("{id}")
    public Sale get(@PathVariable Long id) {
        return salesRepository.getById(id);
    }

    @PostMapping // create new sale
    public Sale create(@RequestBody final Sale sale) {
        return salesRepository.saveAndFlush(sale);
    }
}
