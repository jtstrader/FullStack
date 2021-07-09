CREATE TABLE products
(
    product_id SERIAL PRIMARY KEY,
    product_name varchar(50) NOT NULL,
    amount_in_stock integer NOT NULL,
    cost float NOT NULL
);