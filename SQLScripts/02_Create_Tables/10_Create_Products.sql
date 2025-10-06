USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE Products TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Products](
    [product_id] INT IDENTITY(1,1) NOT NULL,
    [category_id] INT NOT NULL,
    [supplier_id] INT NOT NULL,
    [product_name] NVARCHAR(200) NOT NULL,
    [unit_price] DECIMAL(10,2) NOT NULL CHECK ([unit_price] > 0),
    [stock_quantity] INT NOT NULL DEFAULT (0) CHECK ([stock_quantity] >= 0),
	--PK
    CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED ([product_id] ASC)
        WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF),
			  --FK
    CONSTRAINT [FK_Products_Categories] FOREIGN KEY ([category_id])
        REFERENCES [dbo].[Categories] ([category_id]),
    CONSTRAINT [FK_Products_Suppliers] FOREIGN KEY ([supplier_id])
        REFERENCES [dbo].[Suppliers] ([supplier_id])
) ON [PRIMARY]
GO
--========================================================================================
--==CREATE NONCLUSTERED INDEX ============================--------------------------------
CREATE NONCLUSTERED INDEX [IX_Products_CategoryID] ON [dbo].[Products] ([category_id] ASC)
	WITH(
		PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO
CREATE NONCLUSTERED INDEX [IX_Products_SupplierID] ON [dbo].[Products] ([supplier_id] ASC)
	WITH(
		PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO
