create table Users(
userid serial primary key ,
name varchar(100) not null,
email varchar(100) not null unique,
password varchar(255) not null,
phone varchar(12),
address text,
createdat timestamp default current_timestamp
);

select * from Users;

create table Products(
productId serial primary key ,
productname varchar(150) not null,
description text,
price numeric(10,2) not null check (price >0),
stock int not null check (stock=0),
category varchar(100),
createat timestamp default current_timestamp
);

ALTER TABLE Products
ALTER COLUMN stock TYPE INT,
ALTER COLUMN stock SET NOT NULL,
ADD CONSTRAINT stock_check CHECK (stock >= 0);


create table Orders(
orderid serial primary key,
userid int not null,
orderdate timestamp default current_timestamp,
totalamount numeric(10,2),
status varchar(50) default 'pending',
constraint fk_orders_users 
foreign key(userid)
references users(userid)
on delete cascade
);

create table OrderItems(
orderitemsid serial primary key,
orderid int not null,
productid int not null,
quantity int not null check(quantity>0),
price numeric(10,2) not null check (price>0),

constraint fk_orderitemd_orders
foreign key (orderid)
references orders(ordersid)
on delete cascade,

constraint fk_orderItems_products
foreign key (productid)
references products(productid)


);
drop table orderitems;

select * from orderItems;

select * from OrderItems;

create table OrderItems(
orderitemsid serial primary key,
orderid int not null,
productid int not null,
quantity int not null check(quantity>0),
price numeric(10,2) not null check (price>0),

constraint fk_orderitemd_orders
foreign key (orderid)
references orders(orderid)
on delete cascade,

constraint fk_orderItems_products
foreign key (productid)
references products(productid)
);

INSERT INTO Users (Name, Email, Password, Phone, Address)
VALUES
('Rahul Sharma', 'rahul@gmail.com', 'rahul123', '9876543210', 'Hyderabad'),
('Priya Reddy', 'priya@gmail.com', 'priya123', '9123456780', 'Bangalore'),
('Arjun Kumar', 'arjun@gmail.com', 'arjun123', '9988776655', 'Chennai'),
('Sneha Patel', 'sneha@gmail.com', 'sneha123', '9012345678', 'Mumbai');

select * from Users;


INSERT INTO Products (ProductName, Description, Price, Stock, Category)
VALUES
('Wireless Headphones', 'Bluetooth noise-cancelling headphones', 2999.99, 50, 'Electronics'),

('Gaming Mouse', 'RGB gaming mouse with 6 buttons', 1499.50, 100, 'Electronics'),

('Office Chair', 'Ergonomic office chair', 7999.00, 50, 'Furniture'),

('Water Bottle', '1L stainless steel bottle', 599.00, 200, 'Home'),

('Laptop Stand', 'Adjustable aluminum laptop stand', 1299.99, 75, 'Accessories');



INSERT INTO Orders (UserId, TotalAmount, Status)
VALUES
(1, 4499.49, 'Pending'),

(2, 7999.00, 'Shipped'),

(3, 1898.50, 'Delivered'),

(1, 1299.99, 'Pending');

INSERT INTO OrderItems (OrderId, ProductId, Quantity, Price)
VALUES
(1, 1, 1, 2999.99),
(1, 2, 1, 1499.50),

(2, 3, 1, 7999.00),

(3, 2, 1, 1499.50),
(3, 4, 1, 399.00),

(4, 5, 1, 1299.99);

DROP TABLE Products CASCADE;

CREATE TABLE Products (
    ProductId SERIAL PRIMARY KEY,
    ProductName VARCHAR(150) NOT NULL,
    Description TEXT,
    Price NUMERIC(10,2) NOT NULL CHECK (Price > 0),
    Stock INT NOT NULL CHECK (Stock >= 0),
    Category VARCHAR(100),
    CreatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO Products (ProductName, Description, Price, Stock, Category)
VALUES
('Wireless Headphones', 'Bluetooth noise-cancelling headphones', 2999.99, 50, 'Electronics'),

('Gaming Mouse', 'RGB gaming mouse with 6 buttons', 1499.50, 100, 'Electronics'),

('Office Chair', 'Ergonomic office chair', 7999.00, 20, 'Furniture'),

('Water Bottle', '1L stainless steel bottle', 599.00, 200, 'Home'),

('Laptop Stand', 'Adjustable aluminum laptop stand', 1299.99, 75, 'Accessories');

INSERT INTO Orders (UserId, TotalAmount, Status)
VALUES
(1, 4499.49, 'Pending'),

(2, 7999.00, 'Shipped'),

(3, 1898.50, 'Delivered'),

(1, 1299.99, 'Pending');

INSERT INTO OrderItems (OrderId, ProductId, Quantity, Price)
VALUES
(1, 1, 1, 2999.99),
(1, 2, 1, 1499.50),

(2, 3, 1, 7999.00),

(3, 2, 1, 1499.50),
(3, 4, 1, 399.00),

(4, 5, 1, 1299.99);

select * from Users

select * from Products

select * from orders

select * from OrderItems

SELECT *
FROM Products
WHERE Tags = 'Electronics';

select * from Products;

SELECT *
FROM Products
WHERE category = 'Electronics';

create table products(
productid  serial primary key,
tagname varchar(100) not null
);



