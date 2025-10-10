USE [GlobalGadgetsDB]
GO
--==========================================================
--COUNT OF DELIVERED ELECTRONIC ORDERS======================
SELECT COUNT (DISTINCT o.order_id) AS Delivered_Electronics_Orders
FROM Orders o
JOIN OrderDetails od ON o.order_id = od.order_id
JOIN Products p ON od.product_id = p.product_id
WHERE 
	o.status = 'Delivered'
	AND p.product_name LIKE '%Electronics%'
