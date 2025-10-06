USE [GlobalGadgetsDB]
GO
-- =============================================
-- INSERT INTO Orders Table ====================
-- =============================================
INSERT INTO Orders (customer_id, order_date, payment_id, shipping_id, status) VALUES
(1, GETDATE(), 1, 1, 'Delivered'),
(2, GETDATE(), 2, 2, 'Processing'),
(3, GETDATE(), 3, 1, 'Cancelled'),
(4, DATEADD(DAY, -2, GETDATE()), 1, 2, 'Delivered'),
(5, DATEADD(DAY, -1, GETDATE()), 2, 1, 'Shipped'),
(6, GETDATE(), 3, 2, 'Pending'),
(7, GETDATE(), 1, 1, 'Delivered'),
(8, GETDATE(), 2, 2, 'Delivered'),
(9, GETDATE(), 3, 1, 'Cancelled'),
(10, GETDATE(), 1, 1, 'Processing');
GO
