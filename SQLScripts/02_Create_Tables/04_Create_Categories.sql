USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE Categories TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Categories](
    [category_id] INT IDENTITY(1,1) NOT NULL,
    [category_name] NVARCHAR(100) NOT NULL,
	          --PK
    CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED ([category_id] ASC)
        WITH (PAD_INDEX = OFF,
				STATISTICS_NORECOMPUTE = OFF,
				IGNORE_DUP_KEY = OFF,
                ALLOW_ROW_LOCKS = ON,
				ALLOW_PAGE_LOCKS = ON,
				OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF),
			  --UQ
    CONSTRAINT [UQ_Categories_Name] UNIQUE ([category_name])
) ON [PRIMARY]
GO
--=====================================================================================
--==CREATE NONCLUSTERED INDEX--========================================================
CREATE NONCLUSTERED INDEX IX_Categories_Name ON dbo.Categories ([category_name]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO
