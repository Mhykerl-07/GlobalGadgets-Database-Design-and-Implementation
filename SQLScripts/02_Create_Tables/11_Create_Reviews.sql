USE [GlobalGadgetsDB]
GO

-------------------------------------------------------------
--===============| CREATE Reviews TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Reviews](
    [review_id] INT IDENTITY(1,1) NOT NULL,
    [product_id] INT NOT NULL,
    [customer_id] INT NOT NULL,
    [rating] INT NOT NULL CHECK ([rating] BETWEEN 1 AND 5),
    [review_text] NVARCHAR(MAX) NULL,
    [review_date] DATETIME NOT NULL DEFAULT (GETDATE()),
    CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED ([review_id] ASC)
        WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF),
    CONSTRAINT [FK_Reviews_Products] FOREIGN KEY ([product_id])
        REFERENCES [dbo].[Products] ([product_id]),
    CONSTRAINT [FK_Reviews_Customers] FOREIGN KEY ([customer_id])
        REFERENCES [dbo].[Customers] ([customer_id])
) ON [PRIMARY]
GO


--=====================================================================================
--==CREATE NONCLUSTERED INDEX--========================================================
CREATE NONCLUSTERED INDEX IX_Reviews_ProductID ON dbo.Reviews ([product_id]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO
CREATE NONCLUSTERED INDEX IX_Reviews_CustomerID ON dbo.Reviews ([customer_id]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO