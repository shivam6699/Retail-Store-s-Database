CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    email VARCHAR(100),
    phone VARCHAR(20),
    address TEXT,
    join_date DATE
);

INSERT INTO Customers VALUES
(1, 'John', 'Doe', 'john.doe@email.com', '9876543210', '123 Main St', '2024-01-10'),
(2, 'Jane', 'Smith', 'jane.smith@email.com', '9876543211', '456 Oak St', '2024-02-12'),
(3, 'Robert', 'Brown', 'robert.b@email.com', '9876543212', '789 Pine St', '2024-03-15'),
(4, 'Emily', 'Davis', 'emily.d@email.com', '9876543213', '321 Maple St', '2024-04-20'),
(5, 'Michael', 'Wilson', 'michael.w@email.com', '9876543214', '654 Cedar St', '2024-05-05'),
(6, 'Sarah', 'Taylor', 'sarah.t@email.com', '9876543215', '987 Birch St', '2024-06-22'),
(7, 'David', 'Lee', 'david.l@email.com', '9876543216', '159 Spruce St', '2024-07-11'),
(8, 'Sophia', 'Martinez', 'sophia.m@email.com', '9876543217', '753 Walnut St', '2024-08-03'),
(9, 'Daniel', 'Anderson', 'daniel.a@email.com', '9876543218', '258 Ash St', '2024-09-09'),
(10, 'Olivia', 'Thomas', 'olivia.t@email.com', '9876543219', '369 Hickory St', '2024-10-17');

select * from Customers