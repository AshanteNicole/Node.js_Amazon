DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
  item_id INT NOT NULL AUTO_INCREMENT,
  product_name VARCHAR(100) NOT NULL,
  department_name VARCHAR(100) NOT NULL,
  price FLOAT(10,2) default 0,
  stock_quantity INT default 0,
  PRIMARY KEY (item_id)
);

--add additional lines for the schema--
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Jacket" , "Clothing", 50.99, 25);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Shirt" , "Clothing", 9.99, 50);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Shoes" , "Clothing", 75.99, 30);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("40-inch TV" , "Electronics", 299.99, 8);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("55-inch TV" , "Electronics", 599.99, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("13-inch Macbook Air" , "Computers", 999.99, 15);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("15-inch Macbook Pro" , "Computers", 1299.99, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Diamond Necklace" , "Jewelry", 99.99, 5);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Pearl Earrings" , "Jewelry", 24.99, 10);
INSERT INTO products (product_name, department_name, price, stock_quantity) VALUES("Jeans" , "Clothing", 29.99, 50);