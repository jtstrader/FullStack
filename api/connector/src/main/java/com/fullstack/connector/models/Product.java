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

    @ManyToMany
    @JoinTable(
            name = "product_year_join",
            joinColumns = @JoinColumn(name = "product_id"),
            inverseJoinColumns = @JoinColumn(name = "year_id"))
    private List<ProductYearlyData> productYearlyData;

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

    public List<ProductYearlyData> getProductYearlyData() {
        return productYearlyData;
    }

    public void setProductYearlyData(List<ProductYearlyData> productYearlyData) {
        this.productYearlyData = productYearlyData;
    }
}
