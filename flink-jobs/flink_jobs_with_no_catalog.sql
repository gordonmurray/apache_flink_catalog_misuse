CREATE TABLE products_sink (
    id INT,
    name STRING,
    price DECIMAL(10, 2)
) WITH ('connector' = 'blackhole');

CREATE TABLE products1 (
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

CREATE TABLE products2 (
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

CREATE TABLE products3 (
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

INSERT INTO
    products_sink
SELECT
    id,
    name,
    price
FROM
    products1;

INSERT INTO
    products_sink
SELECT
    id,
    name,
    price
FROM
    products2;

INSERT INTO
    products_sink
SELECT
    id,
    name,
    price
FROM
    products3;