USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE Addresses TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo.Addresses] (
    [address_id] INT IDENTITY(1,1),
    [customer_id] INT NOT NULL,
    [address_type] NVARCHAR(20) NOT NULL CHECK (address_type IN ('Billing', 'Shipping')),
    [street_address] NVARCHAR(255) NOT NULL,
    [city] NVARCHAR(100),
    [state] NVARCHAR(100),
    [postal_code] NVARCHAR(20),
    [country] NVARCHAR(100)

	--PK
	CONSTRAINT [PK_Addresses] PRIMARY KEY CLUSTERED ([address_id] ASC)
        WITH (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
	--FK
    CONSTRAINT [FK_Addresses_Customers] FOREIGN KEY ([customer_id])
        REFERENCES dbo.Customers([customer_id])
) ON [PRIMARY]
GO
--CREATE NONCLUSTERED INDEX ----------------------------------------------
CREATE NONCLUSTERED INDEX IX_Addresses_CustomerID ON dbo.Addresses (customer_id)
WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO

SELECT * FROM dbo.dbo.Addresses