package com.fullstack.connector.controllers;

import com.fullstack.connector.models.Product;
import com.fullstack.connector.repositories.ProductsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/products")
public class ProductsController {
    @Autowired
    private ProductsRepository productsRepository;

    @GetMapping // full list
    public List<Product> list() {
        return productsRepository.findAll();
    }

    @GetMapping // specific product
    @RequestMapping("{id}")
    public Product get(@PathVariable Long id) {
        return productsRepository.getById(id);
    }

    @PostMapping // create new product
    public Product create(@RequestBody final Product product) {
        return productsRepository.saveAndFlush(product);
    }
}
