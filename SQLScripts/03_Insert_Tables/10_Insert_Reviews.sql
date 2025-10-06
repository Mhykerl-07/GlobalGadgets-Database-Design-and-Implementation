USE [GlobalGadgetsDB]
GO
SELECT * FROM Reviews;
-- =============================================
-- INSERT INTO Reviews Table ===================
-- =============================================
INSERT INTO Reviews (product_id, customer_id, rating, review_text, review_date) VALUES
(1, 1, 5, 'Excellent smartwatch, very responsive.', GETDATE()),
(2, 1, 4, 'Great sound quality, decent battery.', GETDATE()),
(4, 4, 5, 'Camera is sharp and easy to use.', GETDATE()),
(1, 7, 4, 'Good value for money.', GETDATE()),
(2, 8, 5, 'Premium feel and great audio.', GETDATE()),
(10, 10, 4, 'Fun gaming experience.', GETDATE());
GO
INSERT INTO Reviews (product_id, customer_id, rating, review_text, review_date) VALUES
(6, 5, 3, 'Decent charger, works as expected.', GETDATE());
GO