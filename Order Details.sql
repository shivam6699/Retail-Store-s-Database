CREATE TABLE OrderDetails (
    order_detail_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO OrderDetails (order_detail_id, order_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 1, 60000.00),
(2, 1, 2, 1, 30000.00),
(3, 2, 2, 1, 30000.00),
(4, 3, 3, 1, 5000.00),
(5, 4, 5, 4, 500.00),
(6, 5, 7, 2, 1200.00),
(7, 6, 6, 10, 100.00),
(8, 7, 4, 1, 15000.00),
(9, 8, 9, 1, 2500.00),
(10, 10, 10, 2, 300.00);

select * from OrderDetails