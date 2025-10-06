USE [GlobalGadgetsDB]
GO
-- =============================================
-- Inserting into Addresses Table
-- =============================================
INSERT INTO [dbo].[Addresses] (customer_id, address_type, street_address, city, state, postal_code, country)
VALUES
(1, 'Billing', '12 Market Rd', 'Lagos', 'Lagos', '100001', 'Nigeria'),
(2, 'Billing', '45 Tech Blvd', 'Abuja', 'FCT', '900001', 'Nigeria'),
(3, 'Billing', '78 Gadget St', 'Kano', 'Kano', '700001', 'Nigeria'),
(4, 'Billing', '33 Retail Ave', 'Ibadan', 'Oyo', '200001', 'Nigeria'),
(5, 'Billing', '90 E-Commerce Ln', 'Enugu', 'Enugu', '400001', 'Nigeria'),
(6, 'Billing', '21 Online St', 'Jos', 'Plateau', '930001', 'Nigeria'),
(7, 'Billing', '10 Tech Park', 'Port Harcourt', 'Rivers', '500001', 'Nigeria');
GO
