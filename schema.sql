CREATE DATABASE supermercado;

USE supermercado;

CREATE TABLE sellers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  cpf VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE clients (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  cpf VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE stores (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE providers (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  address VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE categories (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE orders (
  id INT NOT NULL AUTO_INCREMENT,
  date DATETIME NOT NULL,
  payment_type VARCHAR(255) NOT NULL,
  delivery_type VARCHAR(255),
  status VARCHAR(255),
  client_id INT NOT NULL,
  seller_id INT NOT NULL,
  store_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (client_id) REFERENCES clients(id),
  FOREIGN KEY (seller_id) REFERENCES sellers(id),
  FOREIGN KEY (store_id) REFERENCES stores(id)
);

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) NOT NULL,
  price DOUBLE(7, 2) NOT NULL,
  provider_id INT NOT NULL,
  category_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (provider_id) REFERENCES providers(id),
  FOREIGN KEY (category_id) REFERENCES categories(id)
);

CREATE TABLE order_items (
  id INT NOT NULL AUTO_INCREMENT,
  quantity INT NOT NULL,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (order_id) REFERENCES orders(id),
  FOREIGN KEY (product_id) REFERENCES products(id)
);

ALTER TABLE orders CHANGE payment_type payment_method varchar(255) NOT NULL;
ALTER TABLE orders CHANGE delivery_type delivery_method VARCHAR(255);
