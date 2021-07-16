package com.fullstack.connector.controllers;

import com.fullstack.connector.models.ProductProposal;
import com.fullstack.connector.repositories.ProductProposalRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/v1/proposals")
public class ProductProposalController {
    @Autowired
    private ProductProposalRepository productProposalRepository;

    @GetMapping // full list
    public List<ProductProposal> list() {
        return productProposalRepository.findAll();
    }

    @GetMapping // specific proposal
    @RequestMapping("{id}")
    public ProductProposal get(@PathVariable Long id) {
        return productProposalRepository.getById(id);
    }

    @PostMapping // create new proposal
    public ProductProposal create(@RequestBody final ProductProposal proposal) {
        return productProposalRepository.saveAndFlush(proposal);
    }
}
