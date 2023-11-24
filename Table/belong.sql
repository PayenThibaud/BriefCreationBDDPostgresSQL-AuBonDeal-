create table belong (
	product_UUID UUID REFERENCES Products(product_UUID) NOT NULL,
	order_number INT REFERENCES Orders(order_number) NOT NULL
);
