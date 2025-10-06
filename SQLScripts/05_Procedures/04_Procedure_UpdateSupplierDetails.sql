USE GlobalGadgetsDB;
GO

-- UpdateSupplierDetails
CREATE PROCEDURE dbo.UpdateSupplierDetails
    @SupplierID INT,
    @NewName NVARCHAR(100),
    @NewEmail NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    UPDATE dbo.Suppliers
    SET supplier_name = @NewName,
        contact_email = @NewEmail
    WHERE supplier_id = @SupplierID;
END;
GO

SELECT * FROM Suppliers
EXEC dbo.UpdateSupplierDetails
	@SupplierID = 2,
	@NewName = 'TechSource Ltd',
	@NewEmail = 'contact@techsource.com';

