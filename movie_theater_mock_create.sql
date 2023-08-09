CREATE TABLE IF NOT EXISTS inventory(
  item_id SERIAL PRIMARY KEY,
  upc INTEGER,
  product_amount NUMERIC(10,2),
  FOREIGN KEY(upc) REFERENCES product(upc)
);

CREATE TABLE IF NOT EXISTS customer(
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100),
  last_name VARCHAR(100),
  address VARCHAR(150),
  billing_info VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS in_house_restaurant(
  receipt_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  sub_total NUMERIC(8,2),
  total_cost NUMERIC(10,2),
  upc INTEGER,
  FOREIGN KEY(upc) REFERENCES product(upc)
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE IF NOT EXISTS product(
   upc SERIAL PRIMARY KEY,
   quantity INTEGER,
   product_name VARCHAR(150)
);

CREATE TABLE IF NOT EXISTS concession(
  concession_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  purchase_date DATE DEFAULT CURRENT_DATE,
  sub_total NUMERIC(8,2),
  total_cost NUMERIC(10,2),
  upc INTEGER,
  FOREIGN KEY(upc) REFERENCES product(upc),
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE IF NOT EXISTS tickets(
  ticket_id SERIAL PRIMARY KEY,
  customer_id INTEGER,
  quantity INTEGER,
  sub_total NUMERIC(8,2),
  total_cost NUMERIC(10,2),
  FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

CREATE TABLE IF NOT EXISTS movies(
  movie_id SERIAL PRIMARY KEY,
  ticket_id INTEGER,
  FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);

