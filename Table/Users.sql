create table Users (
	user_UUID UUID PRIMARY KEY NOT NULL CHECK,
	user_pseudo VARCHAR(20) NOT NULL CHECK (user_pseudo <> ''),
	username VARCHAR(20) NOT NULL (username <> ''),
	user_password VARCHAR(64) NOT NULL (user_password <> ''),
	created_at DATE NOT NULL
);