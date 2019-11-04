CREATE TABLE products (
	productID INT IDENTITY(1,1) NOT NULL,
	productName VARCHAR(30) NOT NULL,
	productDescription VARCHAR(50) NOT NULL,
	unitPrice FLOAT NOT NULL,
	imageURL VARCHAR(30) NOT NULL,

	PRIMARY KEY (productID)
);

CREATE TABLE users (
	userID INT IDENTITY(1,1) NOT NULL,
	userName VARCHAR(15) NOT NULL,
	firstName VARCHAR(20) NOT NULL,
	lastName VARCHAR(20) NOT NULL,
	email VARCHAR(30) NOT NULL,
	dob DATE NOT NULL,
	contactNumber VARCHAR(15) NOT NULL,
	hashPassword VARCHAR(60) NOT NULL,

	PRIMARY KEY (userID)
);

CREATE TABLE orders (
	orderID INT IDENTITY(1,1) NOT NULL,
	userID INT NOT NULL,
	orderDate DATE NOT NULL,
	totalCost FLOAT NOT NULL,
	orderStatus VARCHAR(15) NOT NULL,

	PRIMARY KEY (orderID),
	FOREIGN KEY (userID) REFERENCES users(userID)
);

CREATE TABLE cartInfo(
	orderID INT NOT NULL,
	productID INT NOT NULL,
	quantity INT NOT NULL,

	FOREIGN KEY (orderID) REFERENCES orders(orderID),
	FOREIGN KEY (productID) REFERENCES products(productID)
);