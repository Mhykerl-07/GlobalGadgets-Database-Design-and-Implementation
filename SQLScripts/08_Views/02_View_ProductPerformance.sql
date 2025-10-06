USE GlobalGadgetsDB;
GO

--View_ProductPerformance------------------------------
-----Sales,Revenue and Avg Ratin Per Product===========

CREATE VIEW dbo.View_ProductPerformance AS
SELECT
	p.product_id,
	p.product_name,
	SUM(od.quantity) AS Total_units_sold,
	SUM(od.unit_price * od.quantity) AS Total_Revenue,
	AVG(CAST(r.rating AS FLOAT)) AS Avg_Rating
	FROM dbo.Products p
	JOIN dbo.OrderDetails od ON p.product_id = od.product_id
	LEFT JOIN dbo.Reviews r ON p.product_id = r.product_id
	GROUP BY p.product_id, p.product_name;
	GO

	SELECT * FROM dbo.View_ProductPerformance
	WHERE Total_units_sold >1
	ORDER BY Avg_Rating DESC;