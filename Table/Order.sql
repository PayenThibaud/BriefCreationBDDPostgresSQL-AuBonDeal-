create table Orders (
	order_number INT PRIMARY KEY NOT NULL,
	order_total_cost_ht DECIMAL(8,2) NOT NULL CHECK (order_total_cost_ht >= 0),
	order_total_quantity INT NOT NULL CHECK (order_total_quantity >= 0),
	created_at DATE NOT NULL,
	deliver_at TIMESTAMP NOT NULL,
	user_UUID UUID REFERENCES Users(user_UUID) NOT NULL
);
