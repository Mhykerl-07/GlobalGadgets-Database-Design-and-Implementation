USE GlobalGadgetsDB;
GO
--=================================================================
-- ========== TRIGGER RestockOnCancel=============================================

CREATE TRIGGER dbo.Trigger_RestockOnCancel -- Restock Inventory If Order is Cancelled
ON dbo.Orders
AFTER UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1 FROM inserted WHERE status = 'Cancelled'
    )
    BEGIN
        UPDATE i
        SET i.stock_level = i.stock_level + od.quantity
        FROM dbo.Inventory i
        JOIN dbo.OrderDetails od ON i.product_id = od.product_id
        JOIN inserted ins ON od.order_id = ins.order_id;
    END
END;
GO
SELECT * FROM Orders

UPDATE dbo.Orders
SET status = 'Cancelled'
WHERE order_id = 2;
