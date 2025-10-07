# GlobalGadgetDB
GlobalGadgetDB is a SQL-based database designed for a Gadget retail platform. The database supports Customers, products, suppliers, shippings, and more. It also includes stored procedures, functions, and triggers to enforce business logic and ensure data integrity. 
## Features
- **Product & Inventory Management:** Tracks all available gadgets, their prices, stock levels, and suppliers.
- **Customer Management:** Stores customer details, purchase history, and loyalty tracking.
- **Order Processing:** Manages order creation, updates, cancellations, and shipping status.
- **Payment Management:** Handles multiple paymemt types(Cash, Card, Transfer) and maintains accurate records.
- **Triggers and Automation:** Includes triggers for restocking inventory and order updates.
- **Stored Procedures & Functions:** Implements reusable business logic for reporting and transactions.
## Database Schema
The **GlobalGadgetsDB** consists of 13 tables that form the core functionality of the Gadget retail platform. Below is a visual representation of the database schema:

**Entity Relationship Diagram**
![ERD Diagram](https://github.com/Mhykerl-07/GlobalGadgets-Database-Design-and-Implementation/blob/main/image/Global%20ERD%20Diagram.jpg?raw=true)

### Key Tables
- **Products:** Stores product details like name,price,category, and stock level.
- **Suppliers:** Contains Supplier names, contact info, and supply records.
- **Customers:** Holds customer profiles and purchase data,
- **Orders:** Records all customer orders and links to products and payments.
- **OrderDetails:** contains detailed breakdowns of items in each order.
- **Payments:** Manages payment information and type of transactions.
- **Shipping:** Logs shipment status, date, and delivery details.
- **Inventory:** Maintains the latest stock information for each product.
## Installation and Usage
1. Clone the Repository:

   git clone (https://github.com/Mhykerl-07/GlobalGadgets-Database-Design-and-Implementation)

2. Import SQL Scripts:

- Open SQL Server Management Studio (SSMS).
- Import the SQL scripts from the SqlScripts/ folder into your database instance.
- Ensure that all tables, procedures, functions, and triggers are correctly created.

## SQL Scripts

The repository includes SQL scripts for all database objects, including tables, views, stored procedures, functions, and triggers. These scripts are located in the sql/ folder.

## Functions and Procedures
### Scalar Functions
- **SF_CustomerAge:** - Calculates customer age from birthdate.
### Stored Procedures
- **SP_Search_Products_By_Name:** Searches product using partial name matches.
- **SP_Update_Supplier_Details:** updates supplier contact details.
- **SP_Order_Placed_Today:** checks for update placed today.
- **SP_Delete_Delivered_Order:** Deletes orders that the order status is Delivered.

### Triggers
- **TR_PreventNegative_Stock:** This will make sure there wont be a negative stock in the inventory.
- **TR_RestoreOnCancel:** Automatically restocks onventory when an order is cancelled.
## Future Enhancements
There are several potential extensions for this project that could add new features and flexibility:

- **Role-Based Access Control:** This will simulate login and permisssion filtering.
- **Product Archiving:** Implement a system that will move discontinued products from the main table to an archive table.
- **Supplier Rating System:** Evaluate Supplier performance to know which Supplier delivers accurately.
- **Multi-Warehouse Support:** Extend inventory tracking across various locations.
## License
This project is licensed under the MIT License.
## Contact
For any questions or suggestions, please contact akitoyemichael8@gmail.com.
