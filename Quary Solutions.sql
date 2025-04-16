-- 1. Find the Total Number of Orders for Each Customer

select c.customer_id, c.first_name, c.last_name, count(o.order_id) as total_orders
from Customers c
left join orders o on c.customer_id =o.customer_id
group by c.customer_id, c.first_name, c.last_name;

-- 2. Find the Total Sales Amount for Each Product (Revenue per Product)

select p.product_id, p.product_name, sum(od.quantity * od.unit_price) as total_revenue
from Products p
join orderdetails od on p.product_id = od.product_id
group by p.product_id, p.product_name
order by p.product_id asc;

-- 3. Find the Most Expensive Product Sold

select  p.product_id, p.product_name,  p.category, p.price as Most_Expensive_Products
from products p
where price = (select max(price) from products);

--  4. Get the List of Customers Who Have Placed Orders in the Last 30 Days

select c.customer_id, c.first_name, c.last_name
from Customers c
join Orders o on c.customer_id = o.customer_id
where o.order_date >= current_date - INTERVAL '30 DAY';

-- 5. Calculate the Total Amount Paid by Each Customer

select c.customer_id, c.first_name, c.last_name, sum(p.payment_amount) as total_paid
from Customers c
join Orders o on c.customer_id = o.customer_id
join Payments p on o.order_id = p.order_id
group by c.customer_id, c.first_name, c.last_name;

-- 6. Get the Number of Products Sold by Category

select pr.category, sum(od.quantity) as total_sold
from OrderDetails od
join Products pr on od.product_id = pr.product_id
group by pr.category;

-- 7. List All Orders That Are Pending (i.e., Orders that haven't been shipped yet)

select c.customer_id, c.first_name,c.last_name
from customers c
join orders o on c.customer_id = o.customer_id
where o.order_status = 'Pending'; 

-- 8. Find the Average Order Value (Total Order Amount / Number of Orders)

select 
    avg(total_amount) as average_order_value
from Orders;

-- 9. List the Top 5 Customers Who Have Spent the Most Money
select c.customer_id, c.first_name, c.last_name, sum(p.payment_amount) as total_spent
from Customers c
join orders o on c.customer_id = o.customer_id
join payments p on o.order_id = p.order_id
group by c.customer_id, c.first_name, c.last_name
order by total_spent asc
limit 5;

-- 10. Find the Products That Have Never Been Sold
select p.product_id, p.product_name
from Products p
left join OrderDetails od on p.product_id = od.product_id
where od.product_id is null;







