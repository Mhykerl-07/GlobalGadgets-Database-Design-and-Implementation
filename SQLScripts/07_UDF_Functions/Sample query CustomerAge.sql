USE GlobalGadgetsDB;
GO
-- ========== USER-DEFINED FUNCTION ==========
--=====Customer Ages==========================
SELECT DISTINCT
		c.customer_id,
		c.first_name,
		c.date_of_birth,
		DATEDIFF(YEAR, c.date_of_birth, GETDATE()) AS Age
		FROM Customers c
		JOIN Orders o ON c.customer_id = o.customer_id
		JOIN OrderDetails od ON o.order_id = od.order_id
		JOIN Products p ON od.product_id = p.product_id
		WHERE
			DATEDIFF(YEAR, c.date_of_birth, GETDATE()) > 40
			AND product_name LIKE '%Premium%';


			select * from Products