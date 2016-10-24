/* This file creates a database for a pet store that sells dogs.
 * In this database we track information about people who buy dogs 
 * and the dogs that are sold. Therefore, we have two tables - one
 * for users and another for the dogs.
 * /
 
/* Create table for users */
CREATE TABLE IF NOT EXISTS users (
	user_id	INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name	VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	address	VARCHAR(50),
	phone_number VARCHAR(11) NOT NULL UNIQUE
);

/* Create table for dogs */
CREATE TABLE IF NOT EXISTS dogs (
	dog_id INTEGER  PRIMARY KEY AUTOINCREMENT,
	user_id INTEGER,
	breed VARCHAR(255) NOT NULL,
	weight INTEGER NOT NULL,
	sex VARCHAR(1) NOT NULL,
	FOREIGN KEY (user_id) REFERENCES users(user_id)
);

/*Insert dummy data into the users table*/
INSERT INTO users (first_name, last_name, address, phone_number) VALUES ('Rotimi', 'Babalola', 'Abuja', '08781237656');
INSERT INTO users (first_name, last_name, address, phone_number) VALUES ('John', 'Doe', 'Lagos', '08781237658');
INSERT INTO users (first_name, last_name, address, phone_number) VALUES ('Jane', 'Doe', 'Kano', '08781237698');
INSERT INTO users (first_name, last_name, address, phone_number) VALUES ('Alex', 'Morgan', 'Port-Harcourt', '08781298698');
INSERT INTO users (first_name, last_name, address, phone_number) VALUES ('James', 'Lincoln', 'Ibadan', '08781237987')

/*Insert dummy data into the dogs table*/
INSERT INTO dogs (user_id, breed, weight, sex) VALUES (3, 'Pug', 60, 'M');
INSERT INTO dogs (user_id, breed, weight, sex) VALUES (2, 'Labrador', 50, 'F');
INSERT INTO dogs (user_id, breed, weight, sex) VALUES (1, 'Bull dog', 70, 'M');
INSERT INTO dogs (user_id, breed, weight, sex) VALUES (4, 'Alsatian', 80, 'M');
INSERT INTO dogs (user_id, breed, weight, sex) VALUES (5, 'Greyhound', 45, 'F')