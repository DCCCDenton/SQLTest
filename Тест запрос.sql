CREATE DATABASE IF NOT EXISTS CustomersDB;
USE CustomersDB;
CREATE TABLE Customers (
    id INTEGER AUTO_INCREMENT PRIMARY KEY, 
    firstname VARCHAR(30)
);
INSERT INTO Customers (firstname) VALUES 
('Max'),
('Pavel'),
('Ivan'),
('Leonid');
CREATE TABLE Orders (
    id INTEGER AUTO_INCREMENT PRIMARY KEY, 
    CustomerId INTEGER
);
INSERT INTO Orders (CustomerId) VALUES
(2),
(4);

SELECT * FROM Customers
	WHERE id NOT IN (SELECT CustomerId FROM Orders WHERE CustomerId IS NOT NULL)
