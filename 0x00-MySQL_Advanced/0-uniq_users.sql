-- creates a table with name `users`
CREATE TABLE IF NOT EXISTS users (
	id INTEGER PRIMARY KEY AUTO_INCREMENT,
	email VARCHAR(255) NOT NULL UNIQUE,
	name VARCHAR(255)
);
