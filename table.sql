-- CREATE TABLE IF NOT EXISTS users (
--     id INT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     username VARCHAR(255) UNIQUE NOT NULL
-- );

-- INSERT INTO users (id, name, username) VALUES (1, 'Admin', 'admin');
-- INSERT INTO users (id, name, username) VALUES (2, 'Sardor', 'Sarik');
-- INSERT INTO users (id, name, username) VALUES (3, 'Umid', 'umidchik');

-- SELECT * FROM users;

-- *----------------------------------

-- CREATE TABLE IF NOT EXISTS products (
--     id INT PRIMARY KEY,
--     name VARCHAR(255) NOT NULL,
--     company_name VARCHAR(255) NOT NULL,
--     price VARCHAR(255) NOT NULL,
--     type VARCHAR(255) NOT NULL
-- );

-- INSERT INTO products (id, name, company_name, price, type) 
-- VALUES (1, 'Telefon', 'Apple', '1200$', 'Texnika');

-- INSERT INTO products (id, name, company_name, price, type) 
-- VALUES (2, 'Laptop', 'Apple', '1200$', 'Texnika');

-- INSERT INTO products (id, name, company_name, price, type)
-- VALUES (3, 'Olma', 'Olmazor', '12_000', 'Meva');

-- INSERT INTO products (id, name, company_name, price, type)
-- VALUES (4, 'Quloqchin', 'Iphone', '120_000', 'Texnika');


-- SELECT * FROM products;

-- *----------------------------------
DROP TABLE IF EXISTS product;

CREATE TABLE IF NOT EXISTS product (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    company_name VARCHAR(255) NOT NULL,
    price VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL
);

INSERT INTO 
    product (name,company_name,price,type)
VALUES
    ('Telefon', 'Apple', '1200$', 'Texnika'),
    ('Laptop', 'Apple', '1200$', 'Texnika'),
    ('Olma', 'Olmazor', '12_000', 'Meva'),
    ('Quloqchin', 'Iphone', '120_000', 'Texnika');

SELECT * FROM product;

-- SELECT 
--     name
-- FROM 
--     product
-- ORDER BY
--     name;

-- SELECT 
--     name
-- FROM 
--     product
-- WHERE
--    name = 'Laptop';

-- SELECT 
--     name
-- FROM 
--     product
-- WHERE
-- 	name LIKE 'ma%';

SELECT 
    *
INTO TABLE new_products;
FROM
    product;

SELECT * FROM new_products;
-- *----------------------------------