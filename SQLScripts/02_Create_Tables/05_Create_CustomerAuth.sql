USE [GlobalGadgetsDB]
GO
-- =============================================
-- Creating CustomerAuthentication table =======
-- =============================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


CREATE TABLE [dbo].[CustomerAuthentication] (
    [auth_id] INT IDENTITY(1,1),
    [user_id] INT NOT NULL,
    [event_type] NVARCHAR(50) NOT NULL,
    [event_timestamp] DATETIME DEFAULT GETDATE(),
	[ip_address] NVARCHAR(50)
              --PK
	CONSTRAINT [PK_CustomerAuthentication] PRIMARY KEY CLUSTERED ([auth_id] ASC)
        WITH (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
			  --FK
    CONSTRAINT FK_Auth_UserAccount FOREIGN KEY (user_id)
        REFERENCES dbo.UserAccount(user_id)
);
GO

-- Index: IX_CustomerAuthentication_UserID
CREATE NONCLUSTERED INDEX IX_CustomerAuthentication_UserID
ON dbo.CustomerAuthentication (user_id)
WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO