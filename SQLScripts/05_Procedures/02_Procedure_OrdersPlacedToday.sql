USE GlobalGadgetsDB;
GO

--Orders Placed Today
CREATE PROCEDURE [dbo].[OrdersPlacedToday]
AS
BEGIN
    -- Count the number of orders placed today
    SELECT COUNT(*) AS OrdersPlacedToday
    FROM [dbo].[Orders]
    WHERE CAST(order_date AS DATE) = CAST(GETDATE() AS DATE);
END
GO

SELECT* FROM Orders

--to executive the stored procedure; 
EXEC [dbo].[OrdersPlacedToday];
