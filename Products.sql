CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2),
    stock_quantity INT
);

INSERT INTO Products VALUES
(1, 'Laptop', 'Electronics', 60000.00, 20),
(2, 'Smartphone', 'Electronics', 30000.00, 50),
(3, 'Desk Chair', 'Furniture', 7000.00, 15),
(4, 'Office Desk', 'Furniture', 15000.00, 10),
(5, 'Water Bottle', 'Accessories', 500.00, 100),
(6, 'Notebook', 'Stationery', 100.00, 200),
(7, 'LED Lamp', 'Home Decor', 1200.00, 30),
(8, 'Backpack', 'Accessories', 1500.00, 25),
(9, 'Headphones', 'Electronics', 2500.00, 40),
(10, 'Mouse Pad', 'Electronics', 300.00, 60);

select * from products