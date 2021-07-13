DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS sales;
DROP TABLE IF EXISTS product_sales;

CREATE TABLE products(product_id SERIAL PRIMARY KEY, product_name varchar(50) NOT NULL, amount_in_stock integer NOT NULL, production_cost float NOT NULL, distribution_cost float NOT NULL, retail_price float NOT NULL);
CREATE TABLE sales(sales_id SERIAL PRIMARY KEY, sale_year DATE NOT NULL, units_sold INTEGER NOT NULL);
CREATE TABLE product_sales(product_id INTEGER NOT NULL, sales_id INTEGER NOT NULL);