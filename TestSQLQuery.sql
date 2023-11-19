CREATE TABLE Product
(
	id int NOT NULL PRIMARY KEY,
	name nvarchar(50)
)
INSERT Product VALUES 
(1, 'Product 1'),
(2, 'Product 2'),
(3, 'Product 3'),
(4, 'Product 4'),
(5, 'Product 5')
CREATE TABLE Category
(
	id int NOT NULL PRIMARY KEY,
	name nvarchar(50)
)
INSERT Category VALUES
(1, 'Category 1'),
(2, 'Category 2')
CREATE TABLE ProductCategory
(
	id int NOT NULL PRIMARY KEY,
	product_id int NOT NULL FOREIGN KEY REFERENCES Product(id),
	category_id int NOT NULL FOREIGN KEY REFERENCES Category(id),
)
INSERT ProductCategory VALUES
(1, 1, 1),
(2, 1, 2),
(4, 2, 1),
(5, 3, 1)
SELECT p.name, c.name
FROM Product p
LEFT JOIN ProductCategory pc
ON p.id = pc.product_id
LEFT JOIN Category c
ON c.id = pc.category_id