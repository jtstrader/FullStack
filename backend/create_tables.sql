CREATE TABLE products
(
    product_id SERIAL PRIMARY KEY,
    product_name varchar(50) NOT NULL,
    amount_in_stock integer NOT NULL,
    cost float NOT NULL
);

CREATE TABLE sales
(
    id SERIAL PRIMARY KEY,
    product_id integer NOT NULL,
    sale_year YEAR NOT NULL,
    total_sales integer NOT NULL
);