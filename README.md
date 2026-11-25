✈️ Airlines Database Management System
<p align="center">
  <strong>A SQL Database Project | IT Project</strong>
  <br>
  Designed to organize and manage airline operations, passengers, flights, bookings, payments, and luggage.
</p>


⸻


📌 Table of Contents
📖 Project Overview
🎯 Project Objectives
⚙️ Technologies Used
🗂️ Database Entities
🏗️ Database Design
💾 Database Implementation
👁️ SQL Views
🔍 SQL Queries
📊 Database Normalization
👩‍💻 Team Members
🎓 Conclusion


⸻


📖 Project Overview
The Airlines Database Management System is a database project developed to demonstrate how SQL databases can be used to manage airline operations efficiently.
The system organizes and stores information related to users, travelers, airlines, airports, trips, tickets, payments, seats, luggage, and reviews.
It provides a structured way to manage airline information, retrieve booking details, track payments, and analyze travel data using SQL queries.
🎯 Project Objectives
The main objectives of this project are:
Design and implement a relational database for an airline reservation system.
Organize airline information into structured tables.
Establish relationships between database entities.
Apply SQL commands to create tables and insert records.
Develop SQL queries to retrieve and analyze information.
Create database views for easier data access.
Apply normalization techniques to reduce data redundancy.
Improve data organization, accuracy, and consistency.
⚙️ Technologies Used
Technology Purpose
SQL Database creation and management
Microsoft SQL Server Database implementation and execution
SQL Server Management Studio (SSMS) Writing and executing SQL statements
GitHub Project documentation and version control
🗂️ Database Entities
The database consists of 11 main entities:
Entity Description
Users Stores user information and account details.
Travelers Stores passenger information, including personal details.
Airlines Contains airline company information.
Airports Stores airport names, cities, and countries.
Trips Manages flight schedules, routes, and prices.
Seats Stores seat numbers, classes, and positions.
Tickets Manages ticket bookings and booking statuses.
Payments Stores payment amounts, dates, and methods.
SeatReservations Connects trips with reserved seats.
Luggage Stores baggage weight, type, and status.
Reviews Stores passenger ratings and feedback.
🏗️ Database Design
The database design includes two important diagrams:
1. Database Schema
The schema illustrates the database tables, their attributes, primary keys, and foreign keys.
2. Entity Relationship Diagram (ERD)
The ER Diagram represents the relationships between the different entities and explains how the database components are connected.
These diagrams provide the foundation for implementing the relational database.
💾 Database Implementation
The project uses SQL statements to create and manage the database.
1. Data Definition Language (DDL)
DDL commands are used to define the database structure.
Examples include:
CREATE TABLE
CREATE VIEW
2. Data Manipulation Language (DML)
DML commands are used to insert and retrieve database records.
Examples include:
INSERT INTO
SELECT
JOIN
GROUP BY
ORDER BY
3. Database Constraints
The project uses database constraints to maintain data integrity, including:
Primary Keys (PK)
Foreign Keys (FK)
NOT NULL
UNIQUE
CHECK
DEFAULT
👁️ SQL Views
The project includes several SQL views to simplify data retrieval and present useful information.
View Name Description
View_User_Bookings Displays user bookings with trip routes and booking status.
View_Upcoming_Trips Displays upcoming trips and their details.
View_Confirmed_Tickets Shows tickets with confirmed booking status.
View_Luggage_Heavy Identifies luggage weighing more than 20 kg.
View_Reviews_High Displays reviews with ratings of 4 or above.
Airline Trips View Combines airline names with trip information.
Affordable Trips View Displays trips with prices below 400.
🔍 SQL Queries
The project includes different SQL queries to retrieve and analyze airline database information.
The queries demonstrate:
JOIN Operations: Combining information from multiple tables.
Aggregate Functions: Using COUNT(), SUM(), and AVG().
GROUP BY: Grouping records for analysis.
ORDER BY: Sorting query results.
Subqueries: Retrieving data using nested SQL statements.
LEFT JOIN: Identifying records without matching information.
Filtering: Using WHERE conditions to retrieve specific records.
Data Analysis: Calculating airline revenue, ticket totals, and booking statistics.
Examples of Query Applications
Counting the total bookings for each user.
Retrieving confirmed tickets and their prices.
Calculating total revenue for each airline.
Identifying overweight luggage and additional fees.
Finding trips with prices above the average.
Counting tickets according to booking status.
Calculating the total invoice, including luggage fees.
Finding the latest booking date for each user.
📊 Database Normalization
Normalization was applied to organize the database and reduce redundant information.
The project demonstrates three normalization stages:
First Normal Form (1NF)
Removes repeating groups.
Ensures that each attribute contains atomic values.
Stores each seat or luggage item separately.
Second Normal Form (2NF)
Removes partial dependencies.
Separates data into related tables.
Ensures attributes depend on the entire primary key.
Third Normal Form (3NF)
Removes transitive dependencies.
Separates airline and passenger information where appropriate.
Ensures non-key attributes depend on their respective primary keys.
👩‍💻 Team Members
This project was developed collaboratively by the following team members:
Student Name Student ID
Nouf Alturki 442201364
Raghad Altowayan 461210920
Taif Alhatlany 461211497
Leen Alharbi 452200392
Jana Alharbi 461211161
Rwasen Alwani 451203317
Leena Albassam 461210986
Ghaida Almutairi 452200553
Lana Alarefy 461210292
Elan Aljarbou 451203301
🎓 Conclusion
Through this project, we gained practical experience in designing and implementing a relational database using SQL.
We learned how to create tables, establish relationships, insert records, write SQL queries, create views, and apply normalization techniques.
The project demonstrates how database systems can improve data organization, information retrieval, and the management of airline operations.


⸻


<p align="center">
  ✈️ <strong>Airlines Database Management System</strong>
  <br>
  <em>IT Project | Database Design and SQL Implementation</em>
  <br><br>
  Made with dedication by our project team ❤️
</p>

