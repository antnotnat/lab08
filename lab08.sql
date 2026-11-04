CREATE DATABASE blog_site;
USE blog_site;
CREATE TABLE users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    is_active BOOLEAN NOT NULL
);
CREATE TABLE posts (
    post_id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT NOT NULL,
    title VARCHAR(100) NOT NULL,
    content TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
INSERT INTO users (username, email, is_active) VALUES ('alex', 'alex@gmail.com', true);
INSERT INTO users (username, email, is_active) VALUES ('mia', 'mia@gmail.com', false);
INSERT INTO posts (user_id, title, content) VALUES (1, 'FIRST POST', 'This is my first blog post.');
INSERT INTO posts (user_id, title, content) VALUES (2, 'Hello World', 'Mia is testing her first post.');
