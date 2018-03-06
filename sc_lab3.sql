#CREATE SCHEMA `e_cafe` ;
create table e_cafe.food_items
(
	id int not null auto_increment,
    item_name varchar(255) unique,
    price int,
    primary key(id)
);
create table e_cafe.person
(
	id int not null auto_increment,
    pname varchar(255) unique,
    pass varchar(255),
    designation varchar(10),
    primary key(id)
);
create table e_cafe.order_delivery
(
	id int not null auto_increment,
    customer_name varchar(255),
    order_time datetime,
    contact_no varchar(255),
    order_status varchar(15),
    bill int,
    primary key(id)
);
create table e_cafe.order_pickup
(
	id int not null auto_increment,
    customer_name varchar(255),
    contact_no varchar(255),
    order_time datetime,
    pickup_time datetime,
    order_status varchar(15),
    bill int,
    primary key(id)
);
create table e_cafe.pickup_history
(
	id int not null,
    order_time datetime,
    item_id int,
    quantity int,
    foreign key (id) references e_cafe.order_pickup(id),
    primary key(id,order_time,item_id)
);
create table e_cafe.delivery_history
(
	id int not null,
    order_time datetime,
    item_id int,
    quantity int,
    foreign key (id) references e_cafe.order_delivery(id),
    primary key(id,order_time,item_id)
);