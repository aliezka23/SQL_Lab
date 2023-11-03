CREATE TABLE `employee` (
	`Employee_ID` INT NOT NULL AUTO_INCREMENT,
	`User_Name` varchar NOT NULL,
	`First_Name` varchar NOT NULL,
	`Last_Name` varchar NOT NULL,
	`Employment_date` DATE NOT NULL,
	`Department_ID` INT NOT NULL,
	`Manager_ID` INT NOT NULL,
	`Rate` FLOAT NOT NULL,
	`Bonus` FLOAT NOT NULL,
	PRIMARY KEY (`Employee_ID`)
);

CREATE TABLE `Product` (
	`Product_ID` INT NOT NULL AUTO_INCREMENT,
	`Product_Name` varchar NOT NULL,
	`Product_Description` varchar NOT NULL,
	`Category` varchar NOT NULL,
	`Manufacture` varchar NOT NULL,
	`Product_Type` varchar NOT NULL,
	`Amount` INT NOT NULL,
	`Price` FLOAT NOT NULL,
	PRIMARY KEY (`Product_ID`)
);

CREATE TABLE `Orders` (
	`Orders_ID` INT NOT NULL AUTO_INCREMENT,
	`Employee_ID` INT NOT NULL,
	`Product_ID` INT NOT NULL,
	`Customer_ID` INT NOT NULL,
	`Transaction_Type` INT NOT NULL,
	`Transaction_Moment` DATETIME NOT NULL,
	`Amount` INT NOT NULL,
	PRIMARY KEY (`Orders_ID`)
);

CREATE TABLE `Department` (
	`Department_ID` INT NOT NULL AUTO_INCREMENT,
	`Department_Name` varchar NOT NULL,
	`City` varchar NOT NULL,
	`Street` varchar NOT NULL,
	`Building_No` INT NOT NULL,
	PRIMARY KEY (`Department_ID`)
);

CREATE TABLE `Customer` (
	`Customer_ID` INT NOT NULL AUTO_INCREMENT,
	`First_Name` varchar NOT NULL,
	`Last_Name` varchar NOT NULL,
	`Genger` varchar NOT NULL,
	`Birth_Date` DATE NOT NULL,
	`Phone_Number` INT NOT NULL,
	`Email` varchar NOT NULL,
	`Discount` varchar NOT NULL,
	PRIMARY KEY (`Customer_ID`)
);

ALTER TABLE `employee` ADD CONSTRAINT `employee_fk0` FOREIGN KEY (`Department_ID`) REFERENCES `Department`(`Department_ID`);

ALTER TABLE `employee` ADD CONSTRAINT `employee_fk1` FOREIGN KEY (`Manager_ID`) REFERENCES `employee`(`Employee_ID`);

ALTER TABLE `Orders` ADD CONSTRAINT `Orders_fk0` FOREIGN KEY (`Employee_ID`) REFERENCES `employee`(`Employee_ID`);

ALTER TABLE `Orders` ADD CONSTRAINT `Orders_fk1` FOREIGN KEY (`Product_ID`) REFERENCES `Product`(`Product_ID`);

ALTER TABLE `Orders` ADD CONSTRAINT `Orders_fk2` FOREIGN KEY (`Customer_ID`) REFERENCES `Customer`(`Customer_ID`);






