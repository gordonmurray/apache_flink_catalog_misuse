USE CATALOG default_catalog;

CREATE CATALOG products WITH ('type'='generic_in_memory');

USE CATALOG products;

CREATE DATABASE database1;
CREATE DATABASE database2;
CREATE DATABASE database3;

USE database1;

CREATE TABLE products (
    id INT,
    name STRING,
    price DECIMAL(10, 2),
    PRIMARY KEY (id) NOT ENFORCED
) WITH (
    'connector' = 'mysql-cdc',
    'hostname' = 'mariadb',
    'port' = '3306',
    'username' = 'root',
    'password' = 'rootpassword',
    'database-name' = 'database1',
    'table-name' = 'products'
);

CREATE TABLE products_sink (
    id INT,
    name STRING,
    price DECIMAL(10, 2)
) WITH ('connector' = 'blackhole');

INSERT INTO
    products_sink
SELECT
    id,
    name,
    price
FROM
    products;


USE database2;

CREATE TABLE products (
    id INT,
    name STRING,
    price DECIMAL(10, 2),
    PRIMARY KEY (id) NOT ENFORCED
) WITH (
    'connector' = 'mysql-cdc',
    'hostname' = 'mariadb',
    'port' = '3306',
    'username' = 'root',
    'password' = 'rootpassword',
    'database-name' = 'database2',
    'table-name' = 'products'
);

CREATE TABLE products_sink (
    id INT,
    name STRING,
    price DECIMAL(10, 2)
) WITH ('connector' = 'blackhole');

INSERT INTO
    products_sink
SELECT
    id,
    name,
    price
FROM
    products;


USE database3;

CREATE TABLE products (
    id INT,
    name STRING,
    price DECIMAL(10, 2),
    PRIMARY KEY (id) NOT ENFORCED
) WITH (
    'connector' = 'mysql-cdc',
    'hostname' = 'mariadb',
    'port' = '3306',
    'username' = 'root',
    'password' = 'rootpassword',
    'database-name' = 'database3',
    'table-name' = 'products'
);

CREATE TABLE products_sink (
    id INT,
    name STRING,
    price DECIMAL(10, 2)
) WITH ('connector' = 'blackhole');

INSERT INTO
    products_sink
SELECT
    id,
    name,
    price
FROM
    products;