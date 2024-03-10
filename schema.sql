create database DB_Assignment;
use DB_Assignment;

create table product_category(id int primary key, name varchar(30) not null, descrip text, 
								created_at timestamp not null default current_timestamp,
								modified_at timestamp not null default current_timestamp on update current_timestamp,
								deleted_at timestamp);
                                
create table product_inventory(id int primary key, quantity int not null, 
								created_at timestamp not null default current_timestamp,
								modified_at timestamp not null default current_timestamp on update current_timestamp,
								deleted_at timestamp);
                                
create table discount(id int primary key, name varchar(30) not null, descrip text, discount_percent decimal(10,2) not null, 
						active boolean not null, created_at timestamp not null default current_timestamp,
						modified_at timestamp not null default current_timestamp on update current_timestamp,
						deleted_at timestamp);

create table product(id int primary key, name varchar(30), descrip text, sku varchar(16), category_id int not null, 
						inventory_id int not null, price decimal not null, discount_id int not null, 
                        created_at timestamp not null default current_timestamp,
						modified_at timestamp not null default current_timestamp on update current_timestamp,
						deleted_at timestamp, 
                        foreign key(category_id) references product_category(id),
                        foreign key(inventory_id) references product_inventory(id),
                        foreign key(discount_id) references discount(id));
                        
-- Insert data
/* INSERT INTO product_category (id, name, descrip) VALUES 
(1, 'Electronics', 'Electronics products category'),
(2, 'Clothing', 'Clothing products category'),
(3, 'Books', 'Books category');

INSERT INTO product_inventory (id, quantity) VALUES 
(1, 100),
(2, 50),
(3, 200);

INSERT INTO discount (id, name, descrip, discount_percent, active) VALUES 
(1, '10% off', '10% discount on selected items', 0.1, true),
(2, '20% off', '20% discount on clearance items', 0.2, true),
(3, '15% off', '15% discount on new arrivals', 0.15, true);

INSERT INTO product (id, name, descrip, sku, category_id, inventory_id, price, discount_id) VALUES 
(1, 'Laptop', 'High performance laptop', 'SKU001', 1, 1, 1200.00, 1),
(2, 'T-Shirt', 'Cotton T-Shirt', 'SKU002', 2, 2, 20.00, 2),
(3, 'Programming Book', 'Introduction to Programming', 'SKU003', 3, 3, 35.00, 3);

UPDATE product_category
SET name = 'Electronics and Gadgets'
WHERE id = 1;

UPDATE product_inventory
SET quantity = 75
WHERE id = 2;

UPDATE discount
SET discount_percent = 0.25
WHERE id = 2;

UPDATE product
SET price = 1100.00
WHERE id = 1; */
