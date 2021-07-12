CREATE TABLE products
(
    product_id SERIAL PRIMARY KEY,
    product_name varchar(50) NOT NULL,
    amount_in_stock integer NOT NULL,
    cost float NOT NULL
);

CREATE TABLE sales
(
    sales_id SERIAL PRIMARY KEY,
    sale_year DATE NOT NULL,
    total_sales integer NOT NULL
);

CREATE TABLE product_sales
(
    product_id INTEGER,
    sales_id INTEGER
);