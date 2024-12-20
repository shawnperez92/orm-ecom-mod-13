-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- CONNECT TO DATABASE
\c ecommerce_db

-- CREATE TABLES
CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

CREATE TABLE Product (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255) NOT NULL,
    price DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Category(id)
);

CREATE TABLE Tag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    tag_name VARCHAR(255) NOT NULL
);

CREATE TABLE ProductTag (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    product_id INT,
    tag_id INT,
    FOREIGN KEY (product_id) REFERENCES Product(id),
    FOREIGN KEY (tag_id) REFERENCES Tag(id)
);

CREATE TABLE Category (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);