CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    order_status VARCHAR(20),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders VALUES
(1, 1, '2025-03-15', 90000.00, 'Shipped'),
(2, 2, '2025-03-20', 30000.00, 'Pending'),
(3, 3, '2025-03-25', 5000.00, 'Shipped'),
(4, 4, '2025-03-28', 2000.00, 'Shipped'),
(5, 5, '2025-04-01', 6200.00, 'Pending'),
(6, 6, '2025-03-14', 1000.00, 'Shipped'),
(7, 7, '2025-04-02', 15000.00, 'Shipped'),
(8, 8, '2025-04-03', 2500.00, 'Pending'),
(9, 9, '2025-03-29', 60000.00, 'Shipped'),
(10, 10, '2025-04-04', 3200.00, 'Pending');

select * from orders