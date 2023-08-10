--Write a Script that creates an SQL table named "users"
--With the following attributes:
--id = (integer, auto increment, primary key, never null)
--email = (string of 255 characters, unique, never null)
--name = (string of 255 characters)
--country (enumeration of US, CO, and TN, defaulting to US and never null)
--If the table already exists, the script should not fail.

DROP TABLE IF EXISTS users;
CREATE TABLE users (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255)
);
