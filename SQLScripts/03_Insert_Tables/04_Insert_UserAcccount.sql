USE [GlobalGadgetsDB]
GO

-- =============================================
-- Inserting into UserAccount Table
-- =============================================
INSERT INTO [dbo].[UserAccount] (customer_id, username, password_hash)
VALUES
(1, 'johndoe', 'hashed_pw1'),
(2, 'marysmith', 'hashed_pw2'),
(3, 'ahmedali', 'hashed_pw3'),
(4, 'gracej', 'hashed_pw4'),
(5, 'davidok', 'hashed_pw5'),
(6, 'fatimab', 'hashed_pw6'),
(7, 'chineduo', 'hashed_pw7');
GO
