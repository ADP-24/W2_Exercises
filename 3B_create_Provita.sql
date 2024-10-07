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
    Order_ID INT NOT NULL
    OrderDate DATETIME(3) Default Current_timestamp,
    ADD CONSTRAINT fk_customer
    Foreign key (Customer_ID)
    References Customers(Customer_ID),
    Employee_ID INT,
    Total_Amount Decimal (10,2)
    Status Varchar (50),
    Payment ID INT,
    Primary Key (Order_ID)
    );

CREATE TABLE Order_Items (
	Item_ID INT NOT NULL,
    ADD CONSTRAINT fk_orders
    Foreign key (Order_ID)
    References Orders(Order_ID),
    Product_ID INT,
    Quantity INT,
    Price_Per_Unit DECIMAL (10,2),