package com.fullstack.connector.repositories;

import com.fullstack.connector.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductsRepository extends JpaRepository<Product, Long> {

}
