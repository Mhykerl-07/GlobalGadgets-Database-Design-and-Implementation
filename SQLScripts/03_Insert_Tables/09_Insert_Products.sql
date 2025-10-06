USE [GlobalGadgetsDB]
GO
-- =============================================
-- INSERT INTO Products Table ==================
-- =============================================
INSERT INTO Products (category_id, supplier_id, product_name, unit_price, stock_quantity) VALUES
(1, 1, 'Premium Smartwatch', 250.00, 50),
(1, 2, 'Premium Headphones', 180.00, 30),
(2, 1, 'Electronics Drone', 500.00, 20),
(2, 3, 'Electronics Camera', 350.00, 15),
(3, 2, 'Basic Phone Case', 15.00, 100),
(3, 1, 'Basic Charger', 25.00, 80),
(1, 3, 'Premium Laptop', 1200.00, 10),
(4, 4, 'Smart Refrigerator', 850.00, 5),
(5, 5, 'Fitness Tracker', 120.00, 40),
(6, 6, 'Gaming Console', 600.00, 25);
GO
