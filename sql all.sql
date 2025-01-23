create database southwind;
show databases;
use southwind;
select database();
show tables;
CREATE TABLE IF NOT EXISTS products (
         productID    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
         productCode  CHAR(3)       NOT NULL DEFAULT '',
         name         VARCHAR(30)   NOT NULL DEFAULT '',
         quantity     INT UNSIGNED  NOT NULL DEFAULT 0,
         price        DECIMAL(7,2)  NOT NULL DEFAULT 99999.99,
         PRIMARY KEY  (productID)
       );
show tables;
describe products;
INSERT INTO products VALUES (1001, 'PEN', 'Pen Red', 5000, 1.23);
INSERT INTO products VALUES
         (NULL, 'PEN', 'Pen Blue',  8000, 1.25),
         (NULL, 'PEN', 'Pen Black', 2000, 1.25);
INSERT INTO products (productCode, name, quantity, price) VALUES
         ('PEC', 'Pencil 2B', 10000, 0.48),
         ('PEC', 'Pencil 2H', 8000, 0.49);
INSERT INTO products (productCode, name) VALUES ('PEC', 'Pencil HB');
INSERT INTO products values (NULL, NULL, NULL, NULL, NULL);
select * from southwind.products;
delete from southwind.products where products.productID=1006;
SELECT name, price FROM products;
SELECT name, price FROM products WHERE price < 1.0;
SELECT name, quantity FROM products WHERE quantity <= 2000;
SELECT name, price FROM products WHERE name LIKE 'PENCIL%';
SELECT name, price FROM products WHERE name LIKE 'P__ %';
SELECT * FROM products WHERE quantity >= 5000 AND name LIKE 'Pen %';
SELECT * FROM products WHERE quantity >= 5000 AND price < 1.24 AND name LIKE 'Pen %';
select *FROM  products where name in('Pen Red','Pen Black');
SELECT * FROM products WHERE (price BETWEEN 1.0 AND 2.0) AND (quantity BETWEEN 1000 AND 2000);
SELECT * FROM products WHERE name like 'pen %' order by price desc;
select * from products where name like 'Pen %' order by price desc,quantity;
select * from products where name like 'Pen %' order by rand();
select * from products where price limit 2,5;