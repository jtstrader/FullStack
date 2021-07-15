DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS products_yearly_data;
DROP TABLE IF EXISTS product_year_join;
DROP TABLE IF EXISTS product_proposals;

CREATE TABLE products(product_id SERIAL PRIMARY KEY, product_name varchar(50) NOT NULL, product_description varchar(1000) NOT NULL, category varchar(20) NOT NULL, amount_in_stock integer NOT NULL, acme_rating float NOT NULL, user_rating float);
CREATE TABLE products_yearly_data(year_id SERIAL PRIMARY KEY, year DATE NOT NULL, units_sold INTEGER NOT NULL, production_cost float NOT NULL, distribution_cost float NOT NULL, retail_price float NOT NULL);
CREATE TABLE product_year_join(product_id INTEGER NOT NULL, year_id INTEGER NOT NULL),
CREATE TABLE product_proposals(product_id SERIAL PRIMARY KEY, product_name varchar(50) NOT NULL, product_description varchar(1000) NOT NULL);