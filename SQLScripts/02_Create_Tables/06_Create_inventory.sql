USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE Inventory TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Inventory](
    [inventory_id] INT IDENTITY(1,1) NOT NULL,
    [product_id] INT NOT NULL,
    [stock_level] INT NOT NULL CHECK ([stock_level] >= 0),
    [last_updated] DATETIME NOT NULL DEFAULT (GETDATE()),
    [notes] NVARCHAR(500) NULL,
	--PK
    CONSTRAINT [PK_Inventory] PRIMARY KEY CLUSTERED ([inventory_id] ASC)
        WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF),
	--FK
    CONSTRAINT [FK_Inventory_Products] FOREIGN KEY ([product_id])
        REFERENCES [dbo].[Products] ([product_id])
) ON [PRIMARY]
GO
--=====================================================================================
--==CREATE NONCLUSTERED INDEX--========================================================
CREATE NONCLUSTERED INDEX IX_Inventory_ProductID ON dbo.Inventory ([product_id]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO
