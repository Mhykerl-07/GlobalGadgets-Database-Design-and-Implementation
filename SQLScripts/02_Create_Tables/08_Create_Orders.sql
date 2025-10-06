USE [GlobalGadgetsDB]
GO

-------------------------------------------------------------
--===============| CREATE Orders TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Orders](
    [order_id] INT IDENTITY(1,1) NOT NULL,
    [customer_id] INT NOT NULL,
    [order_date] DATETIME NOT NULL DEFAULT (GETDATE()),
    [payment_id] INT NOT NULL,
    [shipping_id] INT NOT NULL,
    [status] NVARCHAR(20) NOT NULL CHECK ([status] IN ('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled')),
    CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED ([order_id] ASC)
	          --PK
        WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF),
			  --FK
    CONSTRAINT [FK_Orders_Customers] FOREIGN KEY ([customer_id])
        REFERENCES [dbo].[Customers] ([customer_id]),
    CONSTRAINT [FK_Orders_Payments] FOREIGN KEY ([payment_id])
        REFERENCES [dbo].[Payments] ([payment_id]),
    CONSTRAINT [FK_Orders_Shipping] FOREIGN KEY ([shipping_id])
        REFERENCES [dbo].[Shipping] ([shipping_id])
) ON [PRIMARY]
GO
--=====================================================================================
--==CREATE NONCLUSTERED INDEX--========================================================
CREATE NONCLUSTERED INDEX IX_Orders__CustomerID ON dbo.Orders ([customer_id]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO

CREATE NONCLUSTERED INDEX IX_Orders__PaymentID ON dbo.Orders ([payment_id]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO

CREATE NONCLUSTERED INDEX IX_Orders__ShippingID ON dbo.Orders ([shipping_id]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO