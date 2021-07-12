package com.fullstack.connector.repositories;

import com.fullstack.connector.models.Sale;
import org.springframework.data.jpa.repository.JpaRepository;

public interface SalesRepository extends JpaRepository<Sale, Long> {

}
