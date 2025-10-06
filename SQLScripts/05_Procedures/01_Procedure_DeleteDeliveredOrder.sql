USE GlobalGadgetsDB;
GO
--====================================
-- DeleteDeliveredOrder
CREATE PROCEDURE dbo.DeleteDeliveredOrder
    @OrderID INT
AS
BEGIN
    DELETE FROM dbo.Orders
    WHERE order_id = @OrderID
      AND status = 'Delivered';
END;
GO

SELECT * FROM Orders
ALTER TABLE dbo.OrderDetails
DROP CONSTRAINT FK_OrderDetails_Orders;

ALTER TABLE dbo.OrderDetails
ADD CONSTRAINT Fk_OrderDetails_Orders
FOREIGN KEY (order_id) REFERENCES dbo.Orders(order_id)
ON DELETE CASCADE;

EXEC dbo.DeleteDeliveredOrder @OrderID = 1;