package com.fullstack.connector.repositories;

import com.fullstack.connector.models.ProductProposal;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ProductProposalRepository extends JpaRepository<ProductProposal, Long> {

}
