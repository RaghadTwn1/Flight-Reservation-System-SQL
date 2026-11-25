# ✈️ Airlines Database Management System

**IT Project | Relational Database Design & SQL Server Implementation**

A relational database project designed to organize and manage airline operations using Microsoft SQL Server.

---

## 📌 Table of Contents

1. Project Overview
2. Objectives
3. Technologies Used
4. Database Structure
5. Relationships and Constraints
6. SQL Views
7. SQL Queries
8. Normalization
9. Project Files
10. Conclusion

---

## 📖 1. Project Overview

The Airlines Database Management System is an academic project implemented using Microsoft SQL Server.

The system manages information about users, travelers, airlines, airports, trips, seats, tickets, payments, luggage, and reviews.

It demonstrates relational database design, SQL implementation, data management, and information retrieval.

---

## 🎯 2. Objectives

- Design a relational database for an airline reservation system.
- Organize information into related tables.
- Define primary keys and foreign keys.
- Apply database constraints.
- Insert sample records.
- Retrieve information using SQL queries.
- Create views for easier data access.
- Apply database normalization concepts.

---

## 🧰 3. Technologies Used

| Technology | Purpose |
|---|---|
| Microsoft SQL Server | Database management |
| SQL | Database creation and querying |
| SSMS | Writing and executing SQL |
| GitHub | Project hosting and documentation |

---

## 🗄️ 4. Database Structure

The database consists of **11 tables**:

| Table | Description |
|---|---|
| Users | User account information |
| Travelers | Traveler personal details |
| Airlines | Airline company information |
| Airports | Airport information |
| Trips | Flight schedules and prices |
| Seats | Seat numbers and classes |
| Tickets | Ticket booking information |
| Payments | Payment information |
| SeatReservations | Reserved seats for trips |
| Luggage | Baggage information |
| Reviews | Ratings and comments |

---

## 🔗 5. Relationships and Constraints

The database uses Primary Keys and Foreign Keys to establish relationships between tables.

**Main Relationships:**

- Travelers → Users
- Trips → Airlines
- Trips → Airports
- Tickets → Users
- Tickets → Travelers
- Tickets → Trips
- Tickets → Seats
- Payments → Tickets
- Luggage → Tickets
- SeatReservations → Trips and Seats
- Reviews → Users and Trips

**Database Constraints:**

- PRIMARY KEY
- FOREIGN KEY
- NOT NULL
- UNIQUE
- CHECK
- DEFAULT

These constraints help maintain data integrity and consistency.

---

## 👁️ 6. SQL Views

The project includes seven SQL Views:

| View Name | Description |
|---|---|
| View_User_Bookings | Displays user bookings and trip details |
| View_Upcoming_Trips | Displays trips from the configured date |
| View_Confirmed_Tickets | Displays confirmed tickets |
| View_Luggage_Heavy | Displays luggage weighing more than 20 |
| View_Reviews_High | Displays reviews rated 4 or higher |
| View_Airline_Trips | Displays airline and trip information |
| View_Trip_Prices | Displays trips priced below 400 |

---

## 🔍 7. SQL Queries

The project demonstrates several SQL operations:

- JOIN
- COUNT()
- SUM()
- GROUP BY
- HAVING
- ORDER BY
- WHERE

**Examples of Query Applications:**

1. Counting total bookings for each user.
2. Listing airline trips by ascending price.
3. Displaying confirmed tickets.
4. Calculating total payments for customers.

---

## 📊 8. Database Normalization

The project discusses three normalization stages:

**First Normal Form (1NF)**

- Ensures atomic values.
- Removes repeating groups.

**Second Normal Form (2NF)**

- Removes partial dependencies.
- Ensures full dependency on the primary key.

**Third Normal Form (3NF)**

- Removes transitive dependencies.
- Improves data organization.

---


---

## 🎓 10. Conclusion

This project provided practical experience in relational database design and SQL Server implementation.

It demonstrates how SQL can be used to create tables, establish relationships, insert data, create views, and retrieve useful information.

The project also highlights the importance of database normalization, data integrity, and structured information management.

---

**Airlines Database Management System**

*IT Project | Database Design & SQL Server*
