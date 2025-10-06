USE GlobalGadgetsDB;
GO
-- ========== VIEW ==========
--To show Orders with Details ==============
CREATE VIEW dbo.View_OrdersWithDetails AS
SELECT 
    o.order_id,
    o.order_date,
    c.category_name,
    p.product_name,
    od.quantity,
    od.unit_price,
    s.supplier_name,
    r.rating,
    r.review_text
FROM dbo.Orders o
JOIN dbo.OrderDetails od ON o.order_id = od.order_id
JOIN dbo.Products p ON od.product_id = p.product_id
JOIN dbo.Categories c ON p.category_id = c.category_id
JOIN dbo.Suppliers s ON p.supplier_id = s.supplier_id
LEFT JOIN dbo.Reviews r ON p.product_id = r.product_id;
GO

SELECT * FROM dbo.View_OrdersWithDetails
WHERE category_name = 'Electronics';