# Full Stack App Backend -- Postgres
This testing application uses postgres as the database. The connection made between the database and the frontend is through Spring Boot and Spring JPA. Run create_tables.sql and insert_data.sql in psql in order to initialize the postgres database.

Data generation is mostly hard coded in the generateQueries file, and is not portable to other Postgres projects unless they are mimicked exactly as this one is designed.

This server contains information on varying products of my fake corporation ACME Inc. (inspiration taken from various media/sources). Data is gathered from the database and sent to the frontend through the api where it is further analyzed for the user to view. A product list can be viewed on the page that leads the user to a "product description" page that will show the product, it's various statistics, etc.

Plans are to move the mean adjustment calculations from the Angular app to the web server side of things, with specialized queries in the JPA repos to prevent the frontend getting overloaded with insane amounts of data (i.e. as of now the current endpoint being called returns the ENTIRE list of data, products, sales, and all. This should not be what sticks!!!)

TODO: create a query generation program that can create any list of queries and be piped directly into psql server of the user's choice.