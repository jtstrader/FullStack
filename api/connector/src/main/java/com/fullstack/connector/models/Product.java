package com.fullstack.connector.models;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.util.List;

@Entity(name = "products")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long product_id;

    String product_name;
    Integer amount_in_stock;
    Float production_cost;
    Float distribution_cost;
    Float retail_price;

    @ManyToMany
    @JoinTable(
            name = "product_sales",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "sales_id"))
    private List<Sale> sales;

    public Product() {
    }

    public Long getProduct_id() {
        return product_id;
    }

    public void setProduct_id(Long product_id) {
        this.product_id = product_id;
    }

    public String getProduct_name() {
        return product_name;
    }

    public void setProduct_name(String product_name) {
        this.product_name = product_name;
    }

    public Integer getAmount_in_stock() {
        return amount_in_stock;
    }

    public void setAmount_in_stock(Integer amount_in_stock) {
        this.amount_in_stock = amount_in_stock;
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

    public List<Sale> getSales() {
        return sales;
    }

    public void setSales(List<Sale> sales) {
        this.sales = sales;
    }

}
