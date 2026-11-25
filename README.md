✈️ Airlines Database Management System
IT Project | Relational Database Design & SQL Server Implementation
A relational database project that demonstrates how airline operations can be organized and managed using Microsoft SQL Server.
📌 Table of Contents
1. Project Overview
2. Objectives
3. Technologies
4. Database Structure
5. Relationships and Constraints
6. SQL Views
7. SQL Queries
8. Normalization
9. Project Files
10. Conclusion
📖 Project Overview
The Airlines Database Management System is an academic database project implemented using Microsoft SQL Server.
The system organizes information about users, travelers, airlines, airports, trips, seats, tickets, payments, luggage, and reviews. It uses relational tables, keys, constraints, SQL views, and queries to store and retrieve information.
🎯 Objectives
● Design a relational database for an airline reservation system.
● Organize information into related tables.
● Define primary keys and foreign keys.
● Apply constraints to support data integrity.
● Insert sample records into the database.
● Retrieve and analyze information using SQL queries.
● Create views for commonly accessed information.
● Demonstrate database normalization concepts.
🧰 Technologies
● Microsoft SQL Server — relational database management.
● SQL — database definition, data insertion, and querying.
● SQL Server Management Studio (SSMS) — writing and executing SQL scripts.
● GitHub — project hosting and documentation.
🗄️ Database Structure
The database contains 11 tables:
1. Users — user account and contact information.
2. Travelers — traveler details linked to users.
3. Airlines — airline company information.
4. Airports — airport names, cities, and countries.
5. Trips — trip dates, times, prices, airlines, and airport references.
6. Seats — seat numbers, classes, and positions.
7. Tickets — ticket bookings and booking statuses.
8. Payments — payment amounts, dates, and methods.
9. SeatReservations — associations between trips and reserved seats.
10. Luggage — luggage weight, type, quantity, fees, and status.
11. Reviews — user ratings and comments about trips.
🔗 Relationships and Constraints
The database uses primary keys and foreign keys to connect related records:
● Travelers references Users.
● Trips references Airlines and Airports for departure and arrival.
● Tickets references Users, Travelers, Trips, and Seats.
● Payments and Luggage reference Tickets.
● SeatReservations references Trips and Seats.
● Reviews references Users and Trips.
Data Integrity
The project uses these SQL constraints:
● PRIMARY KEY — uniquely identifies each record.
● FOREIGN KEY — defines relationships between tables.
● NOT NULL — requires a value in selected columns.
● UNIQUE — prevents duplicate values in selected columns.
● CHECK — restricts values such as gender, seat class, ticket status, payment method, luggage status, and review rating.
● DEFAULT — supplies default values for selected luggage fields.
👁️ SQL Views
The project includes the following views:
● View_User_Bookings — displays users, ticket IDs, trip routes, and booking statuses.
● View_Upcoming_Trips — displays trips from the configured date onward.
● View_Confirmed_Tickets — displays tickets with a Confirmed status.
● View_Luggage_Heavy — displays luggage items weighing more than 20.
● View_Reviews_High — displays reviews with ratings of 4 or higher.
● View_Airline_Trips — displays airline names with trip routes and prices.
● View_Trip_Prices — displays trips priced below 400.
🔎 SQL Queries
The project demonstrates the use of:
● JOIN to combine related tables.
● COUNT() to count records.
● SUM() to calculate totals.
● GROUP BY to group records.
● HAVING to filter grouped results.
● ORDER BY to sort results.
● WHERE to filter records.
Example query tasks:
1. Count bookings for each user.
2. List airline trips in ascending order of price.
3. Display confirmed tickets and their prices.
4. Calculate the total amount paid by customers with confirmed tickets.
📊 Normalization
The project report discusses three common normalization stages:
● First Normal Form (1NF): organizes data into atomic values and removes repeating groups.
● Second Normal Form (2NF): removes partial dependencies on composite keys.
● Third Normal Form (3NF): removes transitive dependencies so non-key attributes depend on the key.
Refer to the project report for the examples and explanations included in the submitted work.
📁 Project Files
The repository is intended to contain the following files:
Flight-Reservation-System-SQL/
├── README.md
├── FlightBookingDatabase.sql
├── presentation/
│   └── IT-Project-Presentation.pdf
├── report/
│   └── IT-Project-Report.pdf
└── docs/
    ├── database-schema.png
    └── erd.png
The folder and file names above are suggested. Use the actual names of the files uploaded to the repository.
🎓 Conclusion
This project provided practical experience in relational database design and SQL Server implementation. It brought together table creation, relationships, constraints, sample data, views, queries, and normalization concepts in an airline database scenario.
Airlines Database Management System
 IT Project | Database Design and SQL Server

