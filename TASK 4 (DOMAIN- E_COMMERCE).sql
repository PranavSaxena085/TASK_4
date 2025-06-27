USE internship_task

CREATE TABLE e_commerce_task_4(
   Product_ID INT PRIMARY KEY AUTO_INCREMENT,
   Product_Name VARCHAR(100),
   Category VARCHAR(100),
   Price DECIMAL(10,2),
   Stock INT,
   Description TEXT,
   Added_date DATE,
   is_available BOOLEAN DEFAULT TRUE,
   Supplier_Name Varchar(100)
)

INSERT INTO e_commerce_task_4 (Product_Name, Category, Price, Stock, Description, Added_date, is_available, Supplier_Name)
VALUES 
('Wireless Mouse', 'Electronics', 599.00, 40, 'Smooth performance with USB receiver.', '2025-01-10', TRUE, 'TechZone Pvt Ltd'),

('Cotton T-Shirt', 'Apparel', 399.00, 100, '100% cotton, available in 5 colors.', '2025-02-05', TRUE, 'ClothMart'),

('Electric Kettle', 'Home Appliances', 1299.00, 15, '1.5L, auto shut-off feature.', '2025-01-20', TRUE, 'KitchenWorld'),

('Bluetooth Speaker', 'Electronics', 1799.00, 0, NULL, '2025-02-18', FALSE, 'SoundMaster'),

('Yoga Mat', 'Fitness', 749.00, 25, 'Anti-slip surface with extra padding.', '2025-01-30', TRUE, NULL),

('Office Chair', 'Furniture', 4999.00, 5, 'Ergonomic chair with lumbar support.', '2024-12-15', TRUE, 'ErgoFurniture Ltd'),

('Mobile Charger', 'Accessories', 299.00, 50, NULL, '2025-03-05', TRUE, 'ChargeIT'),

('Laptop Stand', 'Accessories', 999.00, 20, 'Aluminium body, foldable design.', '2025-02-25', TRUE, 'ProGear'),

('Notebook Set', 'Stationery', 199.00, 200, 'Pack of 5 notebooks, A5 size.', '2025-01-05', TRUE, 'PaperPlus'),

('LED Table Lamp', 'Home Decor', 1599.00, 10, 'Touch sensor with 3 brightness levels.', '2024-11-28', TRUE, 'LightHouse Pvt Ltd');

SELECT * FROM e_commerce_task_4

-- Apply aggregate functions on numeric columns
SELECT SUM(Stock) AS TOTAL_STOCK
FROM e_commerce_task_4

SELECT SUM(Price) AS TOTAL_PRICE
FROM e_commerce_task_4

SELECT COUNT(Product_ID) AS ID_COUNT
FROM e_commerce_task_4

SELECT COUNT(is_available) 
FROM e_commerce_task_4
WHERE is_available = 1;

SELECT AVG(Price) AS AVG_PRICE
FROM e_commerce_task_4

SELECT SUM(Stock) AS TOTAL_STOCK
FROM e_commerce_task_4
WHERE Category = 'Accessories';

-- USE GROUP BY to categorize

SELECT Category, COUNT(*) AS Product_Count
FROM e_commerce_task_4
GROUP BY Category;

SELECT Category, SUM(Stock) AS TOTAL_STOCK
FROM e_commerce_TASK_4
GROUP BY Category;

SELECT Category, AVG(Price) AS Avg_Price
FROM e_commerce_task_4
GROUP BY Category;

-- Filter groups using HAVING

SELECT Category, AVG(Price) AS AVG_PRICE
FROM e_commerce_task_4
GROUP BY Category
HAVING AVG(Price) > 1000;

SELECT Category, COUNT(Stock) AS Count_Stock
FROM e_commerce_task_4
GROUP BY Category
HAVING COUNT(Stock) > 20;

SELECT Supplier_Name, COUNT(*) AS Product_Count
FROM e_commerce_task_4
GROUP BY Supplier_Name
HAVING COUNT(*) > 0;