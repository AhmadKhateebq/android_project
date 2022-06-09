create database resturant_system;
use resturant_system;

create table item(
id int primary key auto_increment,
name varchar(50),
price int,
category varchar(50)
);
create table Employee(
id int primary key auto_increment,
name varchar(20),
username varchar(20),
password varchar(20),
email varchar(20),
role varchar(20),
phone int
);
create table customer(
id int primary key auto_increment,
name varchar(20),
email varchar(20),
phone int
);
create table orders(
id int primary key auto_increment,
customer_id int,
CONSTRAINT fk_orders_customer FOREIGN KEY (customer_id)
        REFERENCES customer (id),
status varchar(20)
);
create table orders_item(
id int primary key auto_increment,
order_id int,
item_id int,
quantity int,
price int,
CONSTRAINT fk_ordersItem_order FOREIGN KEY (order_id)
        REFERENCES orders (id),
CONSTRAINT fk_ordersItem_item FOREIGN KEY (item_id)
        REFERENCES item (id)
);