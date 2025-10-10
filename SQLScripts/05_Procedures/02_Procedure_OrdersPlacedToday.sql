USE GlobalGadgetsDB;
GO
--==================================================
--Orders Placed Today===============================
CREATE PROCEDURE	dbo.GetTodayOrdersByCustomer @customer_id INT
AS
BEGIN
    SELECT
		p.product_id,
		p.product_name,
		s.supplier_id,
		o.order_date
	FROM Orders o
	JOIN OrderDetails od ON o.order_id = od.order_id
	JOIN Products p ON od.product_id = p.product_id
	JOIN Suppliers s ON p.supplier_id = s.supplier_id
    WHERE
		o.customer_id = @customer_id
		AND CAST(order_date AS DATE) = CAST(GETDATE() AS DATE);
END
GO
--EXEC
EXEC dbo.GetTodayOrdersByCustomer @customer_id = 4

