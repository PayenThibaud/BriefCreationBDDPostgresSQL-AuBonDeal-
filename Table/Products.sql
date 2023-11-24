create table Products (
	product_UUID UUID PRIMARY KEY NOT NULL,
	product_name VARCHAR(20) NOT NULL CHECK (product_name <> ''),
	product_description VARCHAR(150) NOT NULL,
	product_price DECIMAL(7,2) NOT NULL CHECK (product_price >= 0),
	product_quantity INT NOT NULL CHECK (product_quantity >= 0),
	created_at DATE NOT NULL,
	updated_at DATE NOT NULL
);