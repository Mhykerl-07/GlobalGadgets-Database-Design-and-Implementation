USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE Shipping TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Shipping](
    [shipping_id] INT IDENTITY(1,1) NOT NULL,
    [delivery_option] NVARCHAR(50) NOT NULL,
	--PK
    CONSTRAINT [PK_Shipping] PRIMARY KEY CLUSTERED ([shipping_id] ASC)
        WITH (PAD_INDEX = OFF,
		STATISTICS_NORECOMPUTE = OFF,
		IGNORE_DUP_KEY = OFF,
        ALLOW_ROW_LOCKS = ON,
		ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
) ON [PRIMARY];
GO
--=====================================================================================
--==CREATE NONCLUSTERED INDEX--========================================================
CREATE NONCLUSTERED INDEX IX_Shipping_Option ON dbo.Shipping ([delivery_option]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO