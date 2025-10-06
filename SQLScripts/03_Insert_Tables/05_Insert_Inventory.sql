USE [GlobalGadgetsDB]
GO
-- =============================================
-- INSERT INTO Inventory Table =================
-- =============================================
INSERT INTO Inventory (product_id, stock_level, last_updated, notes) VALUES
(1, 50, GETDATE(), 'Initial stock'),
(2, 30, GETDATE(), 'Initial stock'),
(3, 20, GETDATE(), 'Initial stock'),
(4, 15, GETDATE(), 'Initial stock'),
(5, 100, GETDATE(), 'Initial stock'),
(6, 80, GETDATE(), 'Initial stock'),
(7, 10, GETDATE(), 'Initial stock'),
(8, 5, GETDATE(), 'Initial stock'),
(9, 40, GETDATE(), 'Initial stock'),
(10, 25, GETDATE(), 'Initial stock');
GO
