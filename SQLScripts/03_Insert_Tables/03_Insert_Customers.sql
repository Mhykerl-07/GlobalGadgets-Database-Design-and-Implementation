USE [GlobalGadgetsDB]
GO

-- =============================================
-- INSERT INTO Customers Table =================
-- =============================================
INSERT INTO Customers (
    first_name, last_name, email, phone_number, billing_address, date_of_birth,
    preferred_payment_id, username, password_hash, registration_date, deactivation_date
) VALUES
('John', 'Doe', 'john.doe@example.com', '08012345678', '12 Market Rd, Lagos', '1980-05-15', 1, 'johndoe', 'hashed_pw1', GETDATE(), NULL),
('Mary', 'Smith', 'mary.smith@example.com', NULL, '45 Tech Blvd, Abuja', '1995-08-22', 2, 'marysmith', 'hashed_pw2', GETDATE(), NULL),
('Ahmed', 'Ali', 'ahmed.ali@example.com', '08098765432', '78 Gadget St, Kano', '1978-03-10', 3, 'ahmedali', 'hashed_pw3', GETDATE(), '2025-09-01'),
('Grace', 'Johnson', NULL, '08011223344', '33 Retail Ave, Ibadan', '1982-11-05', 1, 'gracej', 'hashed_pw4', GETDATE(), NULL),
('David', 'Okoro', 'david.okoro@example.com', NULL, '90 E-Commerce Ln, Enugu', '1990-07-19', 2, 'davidok', 'hashed_pw5', GETDATE(), NULL),
('Fatima', 'Bello', 'fatima.bello@example.com', '08055667788', '21 Online St, Jos', '1983-02-28', 3, 'fatimab', 'hashed_pw6', GETDATE(), NULL),
('Chinedu', 'Obi', NULL, NULL, '10 Tech Park, Port Harcourt', '1975-12-01', 1, 'chineduo', 'hashed_pw7', GETDATE(), NULL),
('Ada', 'Nwosu', 'ada.nwosu@example.com', '08099887766', '88 Retail Way, Owerri', '1981-06-20', 2, 'adanwosu', 'hashed_pw8', GETDATE(), NULL),
('Tunde', 'Bakare', 'tunde.bakare@example.com', '08033445566', '77 Tech Crescent, Abeokuta', '1979-09-09', 3, 'tundeb', 'hashed_pw9', GETDATE(), NULL),
('Ngozi', 'Eze', 'ngozi.eze@example.com', '08022334455', '66 Gadget Lane, Asaba', '1985-01-01', 1, 'ngozie', 'hashed_pw10', GETDATE(), NULL);
GO
