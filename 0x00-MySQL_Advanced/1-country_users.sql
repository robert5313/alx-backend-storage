-- Create a SQL table named "users" with the following requirements:
-- Which contains the following attributes:
-- id, integer, never null, auto increment and primary key.
-- email, string (255 characters), never null and unique.
-- name, string (255 characters).
-- Country: enumeration of countries including US, CO, and TN. This field is never null, and the default value will be the first element of the enumeration, which is US.
-- If table exists, the script should not fail.

DROP TABLE IF EXISTS users;
CREATE TABLE users(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    name VARCHAR(255),
    country CHAR(2) NOT NULL DEFAULT 'US' CHECK (country IN ('US', 'CO', 'TN'))
);
