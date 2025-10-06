# GlobalGadgetDB
GlobalGadgetDB is a SQL-based database designed for a Gadget retail platform. The database supports Customers, products, suppliers, shippings, and more. It also includes stored procedures, functions, and triggers to enforce business logic and ensure data integrity. 
# Features
- **Product & Inventory Management:** Tracks all available gadgets, their prices, stock levels, and suppliers.
- **Customer Management:** Stores customer details, purchase history, and loyalty tracking.
- **Order Processing:** Manages order creation, updates, cancellations, and shipping status.
- **Payment Management:** Handles multiple paymemt types(Cash, Card, Transfer) and maintains accurate records.
- **Triggers and Automation:** Includes triggers for restocking inventory and order updates.
- **Stored Procedures & Functions:** Implements reusable business logic for reporting and transactions.
# Database Schema
The **GlobalGadgetsDB** consists of 13 tables that form the core functionality of the Gadget retail platform. Below is a visual representation of the database schema:

**Entity Relationship Diagram**
![ERD Diagram](https://github.com/Mhykerl-07/GlobalGadgets-Database-Design-and-Implementation/blob/main/image/Global%20ERD%20Diagram.jpg?raw=true))

#Key Tables
- **Products:** Stores product details like name,price,category, and stock level.
- **Suppliers:** Contains Supplier names, contact info, and supply records.
- **Customers:** Holds customer profiles and purchase data,
- **Orders:** Records all customer orders and links to products and payments.
- **OrderDetails:** contains detailed breakdowns of items in each order.
- **Payments:** Manages payment information and type of transactions.
- **Shipments:** Logs shipmemt status, date, and delivery details.
- **Inventory:** Maintains the latest stock information for each product.
#Installation and Usage
1. Clone the Repository:

   git clone https://github.com/I-am-Uchenna/Database-Design-and-Implementation-for-a-Blog-Platform.git

2. Import SQL Scripts:
Open SQL Server Management Studio (SSMS).
Import the SQL scripts from the SqlScripts/ folder into your database instance.
Ensure that all tables, procedures, functions, and triggers are correctly created.
SQL Scripts
The repository includes SQL scripts for all database objects, including tables, views, stored procedures, functions, and triggers. These scripts are located in the sql/ folder.
- ***
