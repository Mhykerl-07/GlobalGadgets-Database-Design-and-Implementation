USE [GlobalGadgetsDB]
GO

--================================================
-- Add CHECK constraints To Products Table =======
--================================================
ALTER TABLE dbo.Products
ADD CONSTRAINT CHK_Products_UnitPrice_Positive
CHECK (unit_price > 0); --Greater Than 0
GO