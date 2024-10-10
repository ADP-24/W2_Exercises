INSERT INTO Customers (Customer_ID, First_Name, Last_Name, Phone, Address, City, State, Zipcode)
VALUES
(1, 'John', 'Doe', '123-456-7890', '123 Main St', 'New York', 'NY', '10001'),
(2, 'Jane', 'Smith', '987-654-3210', '456 Oak St', 'Los Angeles', 'CA', '90001'),
(3, 'Michael', 'Johnson', '555-555-5555', '789 Pine St', 'Chicago', 'IL', '60601');

INSERT INTO Product_Category (Category_ID, Category_Name, Description)
VALUES
(1, 'Electronics', 'Electronic devices and accessories'),
(2, 'Clothing', 'Apparel and fashion items'),
(3, 'Home Appliances', 'Household appliances and tools');

INSERT INTO Supplier (Supplier_ID, Supplier_Name)
VALUES
(1, 'Tech Supplies Inc.'),
(2, 'Fashion World'),
(3, 'Home Essentials');

INSERT INTO Products (Product_ID, Product_Name, Price, Stock_Quantity, Category_ID, Supplier_ID, Description)
VALUES
(1, 'Smartphone', 699.99, 50, 1, 1, 'Latest model smartphone with 128GB storage'),
(2, 'T-Shirt', 19.99, 200, 2, 2, '100% cotton t-shirt, available in multiple sizes'),
(3, 'Blender', 59.99, 100, 3, 3, 'High-performance blender with multiple speeds');

INSERT INTO Orders (Order_ID, OrderDate, Employee_ID, Customer_ID, Total_Amount, Status, Payment_ID)
VALUES
(1, '2024-10-05 10:00:00', 101, 1, 699.99, 'Shipped', 501),
(2, '2024-10-06 12:30:00', 102, 2, 19.99, 'Processing', 502),
(3, '2024-10-07 14:00:00', 103, 3, 59.99, 'Delivered', 503);

INSERT INTO Order_Items (Item_ID, Order_ID, Product_ID, Quantity, Price_Per_Unit)
VALUES
(1, 1, 1, 1, 699.99),  -- Order 1: 1 Smartphone
(2, 2, 2, 1, 19.99),   -- Order 2: 1 T-Shirt
(3, 3, 3, 1, 59.99);   -- Order 3: 1 Blender