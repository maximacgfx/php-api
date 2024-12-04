CREATE DATABASE IF NOT EXISTS symfony;
USE symfony;

CREATE TABLE IF NOT EXISTS users (
                                     id INT AUTO_INCREMENT PRIMARY KEY,
                                     name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
    );

CREATE TABLE IF NOT EXISTS posts (
                                     id INT AUTO_INCREMENT PRIMARY KEY,
                                     title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL
    );

GRANT ALL PRIVILEGES ON my_db.* TO 'admin'@'localhost' IDENTIFIED BY 'secret';
FLUSH PRIVILEGES;
