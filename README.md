✈️ Airlines Database Management System
IT Project · Relational Database Design & SQL Server Implementation
A relational database project for organizing airline operations, including users, travelers, trips, tickets, payments, seats, luggage, and reviews.
📌 Table of Contents
● Project Overview
● Objectives
● Technology Stack
● Database Structure
● Relationships and Constraints
● SQL Views
● SQL Queries
● Normalization
● Repository Contents
● Conclusion
📖 Project Overview
The Airlines Database Management System is an academic project implemented using Microsoft SQL Server. It demonstrates how a relational database can organize airline and reservation information in a structured way.
The database stores information about users, travelers, airlines, airports, trips, seats, tickets, payments, luggage, and reviews. SQL statements are used to create tables, insert sample records, define relationships, create views, and retrieve information.
🎯 Objectives
● Design and implement a relational database for an airline reservation system.
● Organize information into related tables.
● Define primary keys, foreign keys, and integrity constraints.
● Insert sample data into the database.
● Retrieve and analyze information using SQL queries.
● Create views to simplify access to frequently used data.
● Demonstrate database normalization concepts.
🧰 Technology Stack
|Technology                         |Purpose                                         |
 |-----------------------------------|------------------------------------------------|
 |Microsoft SQL Server               |Relational database management                  |
 |SQL                                |Database definition, data insertion, and queries|
 |SQL Server Management Studio (SSMS)|Writing and executing SQL scripts               |
 |GitHub                             |Project hosting and documentation               |
🗄️ Database Structure
The database contains 11 tables:
|Table             |Purpose                                                            |
 |------------------|-------------------------------------------------------------------|
 |`Users`           |Stores user account and contact information.                       |
 |`Travelers`       |Stores traveler details and links travelers to users.              |
 |`Airlines`        |Stores airline information.                                        |
 |`Airports`        |Stores airport names, cities, and countries.                       |
 |`Trips`           |Stores trip dates, times, prices, airlines, and airport references.|
 |`Seats`           |Stores seat numbers, classes, and positions.                       |
 |`Tickets`         |Stores ticket bookings and their statuses.                         |
 |`Payments`        |Stores ticket payment details.                                     |
 |`SeatReservations`|Associates trips with reserved seats.                              |
 |`Luggage`         |Stores luggage weight, type, quantity, fees, and status.           |
 |`Reviews`         |Stores user ratings and comments about trips.                      |
🔗 Relationships and Constraints
The database uses primary keys and foreign keys to connect related records:
● Travelers references Users.
● Trips references Airlines and Airports for departure and arrival.
● Tickets references Users, Travelers, Trips, and Seats.
● Payments and Luggage reference Tickets.
● SeatReservations references Trips and Seats.
● Reviews references Users and Trips.
Data Integrity
The project uses the following SQL constraints:
● PRIMARY KEY — uniquely identifies each record.
● FOREIGN KEY — defines relationships between tables.
● NOT NULL — requires a value in selected columns.
● UNIQUE — prevents duplicate values in selected columns.
● CHECK — restricts values such as gender, seat class, ticket status, payment method, luggage status, and review rating.
● DEFAULT — provides default values for selected luggage fields.
👁️ SQL Views
The project defines the following views:
|View                    |Description                                                   |
 |------------------------|--------------------------------------------------------------|
 |`View_User_Bookings`    |Displays users, ticket IDs, trip routes, and booking statuses.|
 |`View_Upcoming_Trips`   |Displays trips from the configured date onward.               |
 |`View_Confirmed_Tickets`|Displays tickets with a `Confirmed` status.                   |
 |`View_Luggage_Heavy`    |Displays luggage items weighing more than 20.                 |
 |`View_Reviews_High`     |Displays reviews with ratings of 4 or higher.                 |
 |`View_Airline_Trips`    |Displays airline names with trip routes and prices.           |
 |`View_Trip_Prices`      |Displays trips priced below 400.                              |
🔎 SQL Queries
The project includes queries demonstrating:
● Joining related tables using JOIN.
● Counting records with COUNT().
● Calculating totals with SUM().
● Grouping records using GROUP BY.
● Filtering grouped results using HAVING.
● Sorting results using ORDER BY.
● Filtering records using WHERE.
Example query tasks include:
1. Counting bookings for each user.
2. Listing airline trips in ascending order of price.
3. Displaying confirmed tickets and their prices.
4. Calculating the total amount paid by customers with confirmed tickets.
📊 Normalization
The project report discusses the three common normalization stages:
|Normal Form|Main concept                                                            |
 |-----------|------------------------------------------------------------------------|
 |**1NF**    |Organizes data into atomic values and removes repeating groups.         |
 |**2NF**    |Removes partial dependencies on composite keys.                         |
 |**3NF**    |Removes transitive dependencies so non-key attributes depend on the key.|
Refer to the project report for the examples and explanations included in the submitted work.
📁 Repository Contents
Suggested repository structure:
Flight-Reservation-System-SQL/
├── FlightBookingDatabase.sql
├── README.md
├── docs/
│   ├── database-schema.png
│   └── erd.png
├── presentation/
│   └── IT-Project-Presentation.pdf
└── report/
    └── IT-Project-Report.pdf
Upload the SQL script, report, presentation, and diagrams using your actual filenames. The diagram and document paths above are suggested names; update them to match the files you upload.
🎓 Conclusion
This project provided practical experience in relational database design and SQL Server implementation. It brought together table creation, relationships, constraints, sample data, views, queries, and normalization concepts in an airline database scenario.
Airlines Database Management System
 IT Project · Database Design and SQL Server


