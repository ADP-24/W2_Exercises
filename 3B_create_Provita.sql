Create Table Customers (
  Customer_ID INT NOT NULL,
  First_Name Varchar (50),
  Last_Name Varchar (50),
  Phone Varchar (50),
  Address Varchar (50),
  City Varchar (50),
  State Varchar (50),
  Zipcode Varchar(10),
  Primary KEY (Customer_ID)
  );
  
Create Table Orders (
    Order_ID INT Primary key,
    OrderDate timestamp,
    Employee_ID INT,
    Customer_ID Int,
    Total_Amount Decimal (10,2),
    Status Varchar (50),
    Payment_ID INT
    );

CREATE TABLE Order_Items (
	Item_ID INT Primary Key,
    Order_ID INT,
    Product_ID INT,
    Quantity INT,
    Price_Per_Unit DECIMAL (10,2),
	CONSTRAINT foreign key (Order_ID) References Orders(Order_ID)
    ON UPDATE CASCADE ON DELETE SET NULL
    );

CREATE TABLE Products (
	Product_ID INT PRIMARY KEY,
    Product_Name Varchar (50),
    Price decimal (10.2),
    Stock_Quantity INT,
    Category_ID INT,
    Supplier_ID INT,
    Description INT
    );