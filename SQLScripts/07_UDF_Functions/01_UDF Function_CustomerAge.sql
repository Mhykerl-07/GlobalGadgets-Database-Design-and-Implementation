USE GlobalGadgetsDB;
GO
-- ========== USER-DEFINED FUNCTION ==========
--=====Customer Ages==========================
CREATE FUNCTION dbo.UDF_CustomerAge (@dob DATE)
RETURNS INT
AS
BEGIN
    RETURN DATEDIFF(YEAR, @dob, GETDATE());
END;
GO

SELECT 
	customer_id,
	first_name,
	last_name,
	dbo.UDF_CustomerAge(date_of_birth) AS age
FROM dbo.Customers
WHERE dbo.UDF_CustomerAge(date_of_birth) > 40;