CREATE TABLE Payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_date DATE,
    payment_amount DECIMAL(10,2),
    payment_method VARCHAR(20),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id)
);

INSERT INTO Payments (payment_id, order_id, payment_date, payment_amount, payment_method) VALUES
(1, 1, '2025-03-15', 90000.00, 'Credit Card'),
(2, 2, '2025-03-20', 30000.00, 'PayPal'),
(3, 3, '2025-03-25', 5000.00, 'Credit Card'),
(4, 4, '2025-03-28', 2000.00, 'UPI'),
(5, 5, '2025-04-01', 6200.00, 'Credit Card'),
(6, 6, '2025-03-14', 1000.00, 'UPI'),
(7, 7, '2025-04-02', 15000.00, 'Debit Card'),
(8, 8, '2025-04-03', 2500.00, 'Credit Card'),
(9, 9, '2025-03-29', 60000.00, 'UPI'),
(10, 10, '2025-04-04', 3200.00, 'Credit Card');

select * from payments