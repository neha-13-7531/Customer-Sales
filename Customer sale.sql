CREATE DATABASE Customer_sale;
USE Customer_sale;

-- Create table customer
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(50),
    city VARCHAR(50),
    signup_date DATE
);

-- Create table products
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

-- Create table orders
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- Create table order_item
CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- Insert values into the customer table
INSERT INTO customers VALUES
(1,'Neha','Pune','2023-01-01'),
(2,'Amit','Mumbai','2023-01-02'),
(3,'Sneha','Nagpur','2023-01-03'),
(4,'Rahul','Delhi','2023-01-04'),
(5,'Pooja','Pune','2023-01-05'),
(6,'Rohit','Mumbai','2023-01-06'),
(7,'Kiran','Nashik','2023-01-07'),
(8,'Anjali','Kolhapur','2023-01-08'),
(9,'Vikas','Satara','2023-01-09'),
(10,'Nikita','Pune','2023-01-10'),
(11,'Sagar','Mumbai','2023-01-11'),
(12,'Meena','Nagpur','2023-01-12'),
(13,'Akash','Delhi','2023-01-13'),
(14,'Tejas','Pune','2023-01-14'),
(15,'Riya','Mumbai','2023-01-15'),
(16,'Manoj','Nashik','2023-01-16'),
(17,'Pratik','Pune','2023-01-17'),
(18,'Komal','Satara','2023-01-18'),
(19,'Arjun','Delhi','2023-01-19'),
(20,'Shruti','Kolhapur','2023-01-20'),
(21,'Sonal','Mumbai','2023-01-21'),
(22,'Abhishek','Pune','2023-01-22'),
(23,'Mayur','Nagpur','2023-01-23'),
(24,'Isha','Delhi','2023-01-24'),
(25,'Yash','Pune','2023-01-25'),
(26,'Aarti','Mumbai','2023-01-26'),
(27,'Nilesh','Nashik','2023-01-27'),
(28,'Priya','Satara','2023-01-28'),
(29,'Om','Pune','2023-01-29'),
(30,'Swati','Kolhapur','2023-01-30'),
(31,'Ramesh','Delhi','2023-02-01'),
(32,'Kavita','Mumbai','2023-02-02'),
(33,'Uday','Pune','2023-02-03'),
(34,'Pankaj','Nagpur','2023-02-04'),
(35,'Bhavna','Delhi','2023-02-05'),
(36,'Harshal','Pune','2023-02-06'),
(37,'Tanvi','Mumbai','2023-02-07'),
(38,'Siddharth','Nashik','2023-02-08'),
(39,'Vaishali','Satara','2023-02-09'),
(40,'Rutuja','Kolhapur','2023-02-10'),
(41,'Gaurav','Delhi','2023-02-11'),
(42,'Snehal','Mumbai','2023-02-12'),
(43,'Aditya','Pune','2023-02-13'),
(44,'Madhuri','Nagpur','2023-02-14'),
(45,'Sanjay','Delhi','2023-02-15'),
(46,'Dipali','Pune','2023-02-16'),
(47,'Ajinkya','Mumbai','2023-02-17'),
(48,'Shilpa','Nashik','2023-02-18'),
(49,'Vijay','Satara','2023-02-19'),
(50,'Monika','Kolhapur','2023-02-20');
SELECT * FROM customers;

-- insert values in product table
INSERT INTO products VALUES
(101,'Laptop','Electronics',55000),
(102,'Mobile','Electronics',25000),
(103,'Tablet','Electronics',30000),
(104,'Headphones','Accessories',2000),
(105,'Keyboard','Accessories',1500),
(106,'Mouse','Accessories',800),
(107,'Monitor','Electronics',12000),
(108,'Printer','Electronics',15000),
(109,'Camera','Electronics',40000),
(110,'Speaker','Accessories',3000),
(111,'Router','Electronics',2500),
(112,'SSD','Electronics',6000),
(113,'Hard Disk','Electronics',5000),
(114,'Pendrive','Accessories',700),
(115,'Smart Watch','Electronics',8000),
(116,'Power Bank','Accessories',1200),
(117,'Charger','Accessories',900),
(118,'Data Cable','Accessories',500),
(119,'Microphone','Electronics',3500),
(120,'Webcam','Electronics',4500),
(121,'CPU','Electronics',35000),
(122,'GPU','Electronics',60000),
(123,'RAM','Electronics',7000),
(124,'Motherboard','Electronics',14000),
(125,'Cooling Fan','Accessories',1200),
(126,'Projector','Electronics',28000),
(127,'TV','Electronics',45000),
(128,'Remote','Accessories',600),
(129,'Tripod','Accessories',1800),
(130,'Drone','Electronics',90000),
(131,'Gamepad','Accessories',2500),
(132,'VR Headset','Electronics',32000),
(133,'Smart Bulb','Accessories',900),
(134,'Smart Plug','Accessories',1100),
(135,'UPS','Electronics',6000),
(136,'Scanner','Electronics',18000),
(137,'Joystick','Accessories',2700),
(138,'Docking Station','Electronics',8500),
(139,'Bluetooth Adapter','Accessories',750),
(140,'Graphics Tablet','Electronics',9500),
(141,'Laptop Stand','Accessories',1400),
(142,'Earbuds','Accessories',4000),
(143,'Sound Card','Electronics',6500),
(144,'WiFi Extender','Electronics',3200),
(145,'NAS','Electronics',75000),
(146,'Stylus','Accessories',2200),
(147,'Laser Pointer','Accessories',650),
(148,'Cable Organizer','Accessories',450),
(149,'Screen Cleaner','Accessories',350),
(150,'Surge Protector','Accessories',1600);
SELECT * FROM products;

-- insert value in orders
INSERT INTO orders VALUES
(1001,1,'2023-06-01',80000),
(1002,2,'2023-06-02',25000),
(1003,3,'2023-06-03',30000),
(1004,4,'2023-06-04',1500),
(1005,5,'2023-06-05',12000),
(1006,6,'2023-06-06',45000),
(1007,7,'2023-06-07',6000),
(1008,8,'2023-06-08',55000),
(1009,9,'2023-06-09',800),
(1010,10,'2023-06-10',7000),
(1011,11,'2023-06-11',2000),
(1012,12,'2023-06-12',90000),
(1013,13,'2023-06-13',35000),
(1014,14,'2023-06-14',18000),
(1015,15,'2023-06-15',5000),
(1016,16,'2023-06-16',15000),
(1017,17,'2023-06-17',4500),
(1018,18,'2023-06-18',28000),
(1019,19,'2023-06-19',60000),
(1020,20,'2023-06-20',32000),
(1021,21,'2023-06-21',4000),
(1022,22,'2023-06-22',6500),
(1023,23,'2023-06-23',1100),
(1024,24,'2023-06-24',750),
(1025,25,'2023-06-25',9500),
(1026,26,'2023-06-26',1400),
(1027,27,'2023-06-27',40000),
(1028,28,'2023-06-28',1800),
(1029,29,'2023-06-29',2200),
(1030,30,'2023-06-30',350),
(1031,31,'2023-07-01',1600),
(1032,32,'2023-07-02',8500),
(1033,33,'2023-07-03',75000),
(1034,34,'2023-07-04',3000),
(1035,35,'2023-07-05',500),
(1036,36,'2023-07-06',1200),
(1037,37,'2023-07-07',3200),
(1038,38,'2023-07-08',6000),
(1039,39,'2023-07-09',900),
(1040,40,'2023-07-10',450),
(1041,41,'2023-07-11',14000),
(1042,42,'2023-07-12',2700),
(1043,43,'2023-07-13',650),
(1044,44,'2023-07-14',950),
(1045,45,'2023-07-15',28000),
(1046,46,'2023-07-16',45000),
(1047,47,'2023-07-17',600),
(1048,48,'2023-07-18',8000),
(1049,49,'2023-07-19',700),
(1050,50,'2023-07-20',12000);
SELECT * FROM orders;

-- insert values in order items
INSERT INTO order_items VALUES
(1,1001,101,1),
(2,1002,102,1),
(3,1003,103,1),
(4,1004,105,1),
(5,1005,107,1),
(6,1006,127,1),
(7,1007,112,1),
(8,1008,101,1),
(9,1009,106,1),
(10,1010,123,1),
(11,1011,104,1),
(12,1012,130,1),
(13,1013,121,1),
(14,1014,136,1),
(15,1015,113,1),
(16,1016,108,1),
(17,1017,120,1),
(18,1018,126,1),
(19,1019,122,1),
(20,1020,132,1),
(21,1021,142,1),
(22,1022,143,1),
(23,1023,134,1),
(24,1024,139,1),
(25,1025,140,1),
(26,1026,141,1),
(27,1027,109,1),
(28,1028,129,1),
(29,1029,146,1),
(30,1030,149,1),
(31,1031,150,1),
(32,1032,138,1),
(33,1033,145,1),
(34,1034,110,1),
(35,1035,118,1),
(36,1036,116,1),
(37,1037,144,1),
(38,1038,135,1),
(39,1039,133,1),
(40,1040,148,1),
(41,1041,124,1),
(42,1042,137,1),
(43,1043,147,1),
(44,1044,133,1),
(45,1045,126,1),
(46,1046,127,1),
(47,1047,128,1),
(48,1048,115,1),
(49,1049,114,1),
(50,1050,107,1);
SELECT * FROM order_items;

-- inser new record in customer table
INSERT INTO customers VALUES (51,'Rohini','Pune','2023-03-01');

-- update 
UPDATE customers SET city = 'Bangalore' WHERE customer_id = 51;

-- Display all customers from Pune city.
SELECT * FROM customers WHERE city = 'Pune';

-- List all products whose price is greater than ₹30,000.
SELECT product_name, price FROM products WHERE price > 30000;

-- List all products whose price is greater than ₹30,000.
SELECT product_name, price FROM products WHERE price > 30000;

-- Count total number of customers.
SELECT COUNT(*) AS total_customers FROM customers;

-- Display top 5 most expensive products.
SELECT product_name, price FROM products ORDER BY price DESC LIMIT 5;

-- Find total revenue generated by each customer.
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Display customer name, product name, and order date for all orders.
SELECT c.name, p.product_name, o.order_date
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id;

-- List customers who have spent more than ₹50,000.
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING total_spent > 50000;

-- Find average product price for each category.
SELECT category, AVG(price) AS avg_price
FROM products
GROUP BY category;

-- Find customers who placed orders above the average order value.
SELECT c.name, o.total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.total_amount > (
    SELECT AVG(total_amount)
    FROM orders);

-- Find highest selling product category based on revenue.
SELECT p.category, SUM(p.price * oi.quantity) AS revenue
FROM products p
JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.category
ORDER BY revenue DESC
LIMIT 1;

-- Find monthly sales trend.
SELECT 
MONTH(order_date) AS month,
SUM(total_amount) AS total_sales
FROM orders
GROUP BY MONTH(order_date)
ORDER BY month;

-- Identify top 5 customers by total spending.
SELECT c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
ORDER BY total_spent DESC
LIMIT 5;

-- Find products priced higher than category average.
SELECT product_name, price
FROM products p
WHERE price > (
    SELECT AVG(price)
    FROM products
    WHERE category = p.category);
    
-- List customers who have never placed an order.
SELECT c.name
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id
WHERE o.order_id IS NULL;

-- Rank customers by total spending.
SELECT 
c.name,
SUM(o.total_amount) AS total_spent,
RANK() OVER (ORDER BY SUM(o.total_amount) DESC) AS rank_no
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Categorize customers based on spending.
SELECT 
    c.name,
    SUM(o.total_amount) AS total_spent,
    CASE
        WHEN SUM(o.total_amount) >= 70000 THEN 'Platinum'
        WHEN SUM(o.total_amount) >= 40000 THEN 'Gold'
        ELSE 'Silver'
    END AS customer_type
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Find orders that don’t have matching customers.
SELECT *
FROM orders
WHERE customer_id NOT IN (
SELECT customer_id FROM customers);

-- Display customer names along with their order ID and order amount.
SELECT c.name, o.order_id, o.total_amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;









