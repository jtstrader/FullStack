package com.fullstack.connector.models;

public class Product {
    Long product_id;
    String product_name;
    Integer amount_in_stock;
    Float cost;

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

    public Float getCost() {
        return cost;
    }

    public void setCost(Float cost) {
        this.cost = cost;
    }
}
