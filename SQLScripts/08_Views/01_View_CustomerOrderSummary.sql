USE GlobalGadgetsDB;
GO

-----VIEW_CustomerOrderSummary--===================
CREATE VIEW dbo.View_CustomerOrderSummary AS
SELECT
	c.customer_id,
	c.first_name,
	c.last_name,
	COUNT(o.order_id) AS total_orders,
	SUM(od.unit_price * od.quantity) AS total_spent,
	MAX(o.order_date) AS last_order_date
	FROM dbo.Customers c
	JOIN dbo.Orders o ON c.customer_id = o.customer_id
	JOIN dbo.OrderDetails od ON o.order_id = od.order_id
	GROUP BY c.customer_id, c.first_name , c.last_name;
	GO


SELECT * FROM dbo.View_CustomerOrderSummary
WHERE total_spent > 500
ORDER BY last_order_date DESC;