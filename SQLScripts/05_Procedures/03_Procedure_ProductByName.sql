USE [GlobalGadgetsDB]
GO
-- =============================================

-- ========== STORED PROCEDURES ================

-- SearchProductsByName
CREATE PROCEDURE dbo.SearchProductsByName
    @ProductName NVARCHAR(100)
AS
BEGIN

    SELECT 
        p.product_name,
        p.unit_price,
        c.category_name,
        s.supplier_name
    FROM dbo.Products p
    JOIN dbo.Categories c ON p.category_id = c.category_id
    JOIN dbo.Suppliers s ON p.supplier_id = s.supplier_id
    WHERE p.product_name LIKE '%' + @ProductName + '%'
    ORDER BY p.product_name;
END;
GO

EXEC dbo.SearchProductsByName @ProductName = 'Laptop';