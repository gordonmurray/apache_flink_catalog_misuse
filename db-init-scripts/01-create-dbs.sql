CREATE DATABASE database1;

CREATE DATABASE database2;

CREATE DATABASE database3;

USE database1;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10, 2)
);

INSERT INTO
    products (name, price)
VALUES
    ('Product 1', 9.99),
    ('Product 2', 19.99);

USE database2;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10, 2)
);

INSERT INTO
    products (name, price)
VALUES
    ('Product 3', 29.99),
    ('Product 4', 39.99);

USE database3;

CREATE TABLE products (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    price DECIMAL(10, 2)
);

INSERT INTO
    products (name, price)
VALUES
    ('Product 5', 49.99),
    ('Product 6', 59.99);