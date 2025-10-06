USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE Customers TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
    [customer_id] INT IDENTITY(1,1) NOT NULL,
    [first_name] NVARCHAR(100) NOT NULL,
    [last_name] NVARCHAR(100) NOT NULL,
    [email] NVARCHAR(150) NULL, --Optional
    [phone_number] NVARCHAR(20) NULL, --Optional
    [billing_address] NVARCHAR(255) NOT NULL,
    [date_of_birth] DATE NOT NULL,
    [preferred_payment_id] INT NULL,
    [username] NVARCHAR(50) NOT NULL UNIQUE,
    [password_hash] NVARCHAR(255) NOT NULL,
    [registration_date] DATETIME NOT NULL DEFAULT (GETDATE()),
    [deactivation_date] DATE NULL,
	          --PK
    CONSTRAINT [PK_Customers] PRIMARY KEY CLUSTERED ([customer_id] ASC)
        WITH (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF),
			  --FK
    CONSTRAINT [FK_Customers_Payments] FOREIGN KEY ([preferred_payment_id])
        REFERENCES [dbo].[Payments] ([payment_id])
) ON [PRIMARY]
GO
--CREATE NONCLUSTERED INDEX ----------------------------------------------
CREATE NONCLUSTERED INDEX IX_Customers_PaymentID ON dbo.Customers (preferred_payment_id)
WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO
SELECT * FROM Customers
--Drop username,pword,billing column-------------
ALTER TABLE [dbo].[Customers]
DROP CONSTRAINT [UQ__Customer__F3DBC572CA43C406];

EXEC sp_helpindex 'dbo.Customers'
ALTER TABLE [dbo].[Customers]
DROP COLUMN [username], [password_hash], [billing_address];
GO
