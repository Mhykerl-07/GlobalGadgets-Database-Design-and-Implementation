USE GlobalGadgetsDB;
GO
-- =============================================
-- Trigger_PreventNegativeStock =======
-- =============================================
CREATE TRIGGER dbo.Trigger_PreventNegativeStock
ON dbo.Inventory
AFTER UPDATE
AS
BEGIN
    IF EXISTS (
        SELECT 1
        FROM inserted
        WHERE stock_level < 0
    )
    BEGIN
        ROLLBACK TRANSACTION;
        RAISERROR ('Inventory quantity cannot be negative.', 16, 1);
    END
END;
GO
UPDATE dbo.Inventory
SET stock_level = 5
WHERE product_id = 7;