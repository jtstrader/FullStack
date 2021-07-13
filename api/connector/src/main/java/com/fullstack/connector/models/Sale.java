package com.fullstack.connector.models;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import javax.persistence.*;
import java.sql.Date;
import java.util.List;

@Entity(name = "sales")
@JsonIgnoreProperties({"hibernateLazyInitializer", "handler"})
public class Sale {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    Long sales_id;

    Date sale_year;
    Long units_sold;

    @ManyToMany(mappedBy = "sales")
    @JsonIgnore
    private List<Product> products;

    public Sale() {
    }

    public Long getSales_id() {
        return sales_id;
    }

    public void setSales_id(Long sales_id) {
        this.sales_id = sales_id;
    }

    public Date getSale_year() {
        return sale_year;
    }

    public void setSale_year(Date sale_year) {
        this.sale_year = sale_year;
    }

    public Long getUnits_sold() {
        return units_sold;
    }

    public void setUnits_sold(Long units_sold) {
        this.units_sold = units_sold;
    }

    public List<Product> getProducts() {
        return products;
    }

    public void setProducts(List<Product> products) {
        this.products = products;
    }
}
