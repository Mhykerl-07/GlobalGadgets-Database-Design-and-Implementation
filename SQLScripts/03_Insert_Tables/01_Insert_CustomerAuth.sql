USE [GlobalGadgetsDB]
GO
-- =============================================
-- Inserting into CustomerAuthentication Table =
-- =============================================
INSERT INTO [dbo].[CustomerAuthentication] (user_id, event_type)
VALUES
(1, 'Login'),
(2, 'Password Reset'),
(3, 'Login'),
(4, 'Lockout'),
(5, 'Login'),
(6, 'Login'),
(7, 'Password Reset');
GO
SELECT * FROM [dbo].[CustomerAuthentication]