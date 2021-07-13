package com.fullstack.connector.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;

@Entity(name = "products_yearly_data")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class ProductYearlyData {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long year_id;

    Date year;
    Long units_sold;
    Float production_cost;
    Float distribution_cost;
    Float retail_price;

    @ManyToMany(mappedBy = "productYearlyData")
    @JsonIgnore
    private List<Product> products;

    public ProductYearlyData() {
    }

    public Long getYear_id() {
        return year_id;
    }

    public void setYear_id(Long year_id) {
        this.year_id = year_id;
    }

    public Date getYear() {
        return year;
    }

    public void setYear(Date year) {
        this.year = year;
    }

    public Long getUnits_sold() {
        return units_sold;
    }

    public void setUnits_sold(Long units_sold) {
        this.units_sold = units_sold;
    }

    public Float getProduction_cost() {
        return production_cost;
    }

    public void setProduction_cost(Float production_cost) {
        this.production_cost = production_cost;
    }

    public Float getDistribution_cost() {
        return distribution_cost;
    }

    public void setDistribution_cost(Float distribution_cost) {
        this.distribution_cost = distribution_cost;
    }

    public Float getRetail_price() {
        return retail_price;
    }

    public void setRetail_price(Float retail_price) {
        this.retail_price = retail_price;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
