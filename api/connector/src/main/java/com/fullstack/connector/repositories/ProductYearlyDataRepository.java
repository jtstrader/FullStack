package com.fullstack.connector.repositories;

import com.fullstack.connector.models.ProductYearlyData;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductYearlyDataRepository extends JpaRepository<ProductYearlyData, Long> {

}
