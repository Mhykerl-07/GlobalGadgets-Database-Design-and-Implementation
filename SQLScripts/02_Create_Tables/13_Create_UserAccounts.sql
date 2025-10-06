USE [GlobalGadgetsDB]
GO
-------------------------------------------------------------
--===============| CREATE UserAccount TABLE |===============--
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo.UserAccount] (
    [user_id] INT IDENTITY(1,1),
    [customer_id] INT NOT NULL,
    [username] NVARCHAR(50) NOT NULL UNIQUE,
    [password_hash] NVARCHAR(255) NOT NULL,
    [account_status] NVARCHAR(20) DEFAULT 'Active',
    [created_at] DATETIME DEFAULT GETDATE()
	--PK
	CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED ([user_id] ASC)
        WITH (PAD_INDEX = OFF,STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
              ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF)
	--FK
    CONSTRAINT [FK_UserAccount_Customer] FOREIGN KEY ([customer_id])
        REFERENCES [dbo].[Customers] ([customer_id])
) ON [PRIMARY]
GO

EXEC sp_rename 'dbo.[dbo.UserAccount]', 'UserAccount';

--CREATE NONCLUSTERED INDEX ----------------------------------------------
CREATE NONCLUSTERED INDEX IX_UserAccount_Username ON dbo.UserAccount (username)
WITH (PAD_INDEX = ON, STATISTICS_NORECOMPUTE = ON, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON);
GO
