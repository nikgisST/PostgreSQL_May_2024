CREATE TABLE customers (
	id SERIAL PRIMARY KEY,
	customer_name VARCHAR(50)
);

CREATE TABLE contacts (
	id SERIAL PRIMARY KEY,
	contact_name VARCHAR(50),
	phone VARCHAR(50),
	email VARCHAR(50),
	customer_id INT,
	
	CONSTRAINT fk_contacts_customers
	FOREIGN KEY (customer_id)
	REFERENCES customers(id)
	ON DELETE SET NULL   -- will set the customer_id to NULL if the referenced customer_id is deleted from the customers table
	ON UPDATE CASCADE    -- if the id in the customers table is updated, the corresponding customer_id in the contacts table will also be updated automatically
);

INSERT INTO 
	customers(customer_name)
VALUES 
	('BlueBird Inc'),
	('Dolphin LLC');

INSERT INTO
	contacts(customer_id, contact_name, phone, email)
VALUES 
	(1,'John Doe','(408)-111-1234','john.doe@bluebird.dev'),
    (1,'Jane Doe','(408)-111-1235','jane.doe@bluebird.dev'),
    (2,'David Wright','(408)-222-1234','david.wright@dolphin.dev');
	
DELETE FROM
	customers
WHERE 
	id = 1;
