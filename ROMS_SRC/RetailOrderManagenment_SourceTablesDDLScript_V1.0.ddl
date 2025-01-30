
CREATE TABLE Source_Categories
(
	CategoryID           INTEGER NOT NULL ,
	CategoryName         VARCHAR2(20) NULL ,
	Description          VARCHAR2(35) NULL 
);



CREATE UNIQUE INDEX XPKSource_Categories ON Source_Categories
(CategoryID   ASC);



ALTER TABLE Source_Categories
	ADD CONSTRAINT  XPKSource_Categories PRIMARY KEY (CategoryID);



CREATE TABLE Source_Customers
(
	CustomerID           INTEGER NOT NULL ,
	CustomerName         VARCHAR2(100) NULL ,
	ContactName          VARCHAR2(100) NULL ,
	Address              VARCHAR2(35) NULL ,
	City                 VARCHAR2(20) NULL ,
	PostalCode           VARCHAR2(20) NULL ,
	Country              VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKSource_Customers ON Source_Customers
(CustomerID   ASC);



ALTER TABLE Source_Customers
	ADD CONSTRAINT  XPKSource_Customers PRIMARY KEY (CustomerID);



CREATE TABLE Source_Employees
(
	EmployeeID           INTEGER NOT NULL ,
	LastName             VARCHAR2(20) NULL ,
	FirsttName           VARCHAR2(20) NULL ,
	Notes                VARCHAR2(1000) NULL ,
	BirthDate            VARCHAR2(20) NULL ,
	Photo                BLOB NULL 
);



CREATE UNIQUE INDEX XPKSource_Employees ON Source_Employees
(EmployeeID   ASC);



ALTER TABLE Source_Employees
	ADD CONSTRAINT  XPKSource_Employees PRIMARY KEY (EmployeeID);



CREATE TABLE Source_Order_Details
(
	OrderDetailsID       INTEGER NOT NULL ,
	OrderID              INTEGER NOT NULL ,
	ProductID            INTEGER NOT NULL ,
	Quantity             INTEGER NULL 
);



CREATE UNIQUE INDEX XPKSource_Order_Details ON Source_Order_Details
(OrderDetailsID   ASC);



ALTER TABLE Source_Order_Details
	ADD CONSTRAINT  XPKSource_Order_Details PRIMARY KEY (OrderDetailsID);



CREATE  INDEX XIF1Source_Order_Details ON Source_Order_Details
(OrderID   ASC);



CREATE  INDEX XIF2Source_Order_Details ON Source_Order_Details
(ProductID   ASC);



CREATE TABLE Source_Orders
(
	OrderID              INTEGER NOT NULL ,
	OrderDate            DATE NULL ,
	CustomerID           INTEGER NOT NULL ,
	EmployeeID           INTEGER NOT NULL ,
	ShipperID            INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKSource_Orders ON Source_Orders
(OrderID   ASC);



ALTER TABLE Source_Orders
	ADD CONSTRAINT  XPKSource_Orders PRIMARY KEY (OrderID);



CREATE  INDEX XIF1Source_Orders ON Source_Orders
(CustomerID   ASC);



CREATE  INDEX XIF2Source_Orders ON Source_Orders
(EmployeeID   ASC);



CREATE  INDEX XIF3Source_Orders ON Source_Orders
(ShipperID   ASC);



CREATE TABLE Source_Products
(
	ProductID            INTEGER NOT NULL ,
	ProductName          VARCHAR2(20) NULL ,
	Unit                 INTEGER NULL ,
	Price                INTEGER NULL ,
	CategoryID           INTEGER NOT NULL ,
	SupplierID           INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKSource_Products ON Source_Products
(ProductID   ASC);



ALTER TABLE Source_Products
	ADD CONSTRAINT  XPKSource_Products PRIMARY KEY (ProductID);



CREATE  INDEX XIF2Source_Products ON Source_Products
(CategoryID   ASC);



CREATE  INDEX XIF3Source_Products ON Source_Products
(SupplierID   ASC);



CREATE TABLE Source_Shippers
(
	ShipperID            INTEGER NOT NULL ,
	ShipperName          VARCHAR2(20) NULL ,
	Phone                VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKSource_Shippers ON Source_Shippers
(ShipperID   ASC);



ALTER TABLE Source_Shippers
	ADD CONSTRAINT  XPKSource_Shippers PRIMARY KEY (ShipperID);



CREATE TABLE Source_Suppliers
(
	SupplierID           INTEGER NOT NULL ,
	SupplierName         VARCHAR2(20) NULL ,
	ContactName          VARCHAR2(20) NULL ,
	Address              VARCHAR2(50) NULL ,
	City                 VARCHAR2(20) NULL ,
	PostCode             VARCHAR2(20) NULL ,
	Country              VARCHAR2(20) NULL ,
	Phone                INTEGER NULL 
);



CREATE UNIQUE INDEX XPKSource_Suppliers ON Source_Suppliers
(SupplierID   ASC);



ALTER TABLE Source_Suppliers
	ADD CONSTRAINT  XPKSource_Suppliers PRIMARY KEY (SupplierID);



ALTER TABLE Source_Order_Details
	ADD (CONSTRAINT Orders_Order_Details FOREIGN KEY (OrderID) REFERENCES Source_Orders (OrderID));



ALTER TABLE Source_Order_Details
	ADD (CONSTRAINT Products_Order_Details FOREIGN KEY (ProductID) REFERENCES Source_Products (ProductID));



ALTER TABLE Source_Orders
	ADD (CONSTRAINT Customers_Orders FOREIGN KEY (CustomerID) REFERENCES Source_Customers (CustomerID));



ALTER TABLE Source_Orders
	ADD (CONSTRAINT Employees_Orders FOREIGN KEY (EmployeeID) REFERENCES Source_Employees (EmployeeID));



ALTER TABLE Source_Orders
	ADD (CONSTRAINT Shippers_Orders FOREIGN KEY (ShipperID) REFERENCES Source_Shippers (ShipperID));



ALTER TABLE Source_Products
	ADD (CONSTRAINT Categories_Products FOREIGN KEY (CategoryID) REFERENCES Source_Categories (CategoryID));



ALTER TABLE Source_Products
	ADD (CONSTRAINT Suppliers_Products FOREIGN KEY (SupplierID) REFERENCES Source_Suppliers (SupplierID));


