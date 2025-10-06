USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE Suppliers TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Suppliers](
    [supplier_id] INT IDENTITY(1,1) NOT NULL,
    [supplier_name] NVARCHAR(200) NOT NULL,
    [contact_email] NVARCHAR(150) NULL,
	--PK
    CONSTRAINT [PK_Suppliers] PRIMARY KEY CLUSTERED ([supplier_id] ASC)
        WITH (PAD_INDEX = OFF,
			  STATISTICS_NORECOMPUTE = OFF,
			  IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON,
			  ALLOW_PAGE_LOCKS = ON,
			  OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
) ON [PRIMARY]
GO
--=====================================================================================
--==CREATE NONCLUSTERED INDEX--========================================================
CREATE NONCLUSTERED INDEX IX_Suppliers_Email ON dbo.Suppliers ([contact_email]ASC)
WITH(PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF,
		DROP_EXISTING = OFF, ONLINE = OFF, IGNORE_DUP_KEY = OFF,ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON,
		OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON[PRIMARY]
		GO