USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE OrderDetails TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[OrderDetails](
    [order_detail_id] INT IDENTITY(1,1) NOT NULL,
    [order_id] INT NOT NULL,
    [product_id] INT NOT NULL,
    [quantity] INT NOT NULL CHECK ([quantity] > 0),
    [unit_price] DECIMAL(10,2) NOT NULL CHECK ([unit_price] > 0),
	          --PK
    CONSTRAINT [PK_OrderDetails] PRIMARY KEY CLUSTERED ([order_detail_id] ASC)
        WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF),
			  --FK
    CONSTRAINT [FK_OrderDetails_Orders] FOREIGN KEY ([order_id])
        REFERENCES [dbo].[Orders] ([order_id]),
    CONSTRAINT [FK_OrderDetails_Products] FOREIGN KEY ([product_id])
        REFERENCES [dbo].[Products] ([product_id])
) ON [PRIMARY]
GO
--=====================================================================================
--==CREATE NONCLUSTERED INDEX--========================================================
CREATE NONCLUSTERED INDEX IX_OrderDetails_OrderID ON dbo.OrderDetails ([order_id]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO

CREATE NONCLUSTERED INDEX IX_OrderDetails_ProductID ON dbo.OrderDetails ([product_id]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO