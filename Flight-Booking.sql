USE IT131;
GO
/* =========================================
CREATE TABLES
========================================= */
CREATE TABLE Users (
UserID INT,
FullName VARCHAR(100) NOT NULL,
Email VARCHAR(100) NOT NULL UNIQUE,
Password VARCHAR(255) NOT NULL,
PhoneNumber VARCHAR(15) UNIQUE,
CONSTRAINT PK_Users PRIMARY KEY (UserID)
);
GO
CREATE TABLE Travelers (
TravelerID INT,
FullName VARCHAR(100) NOT NULL,
NationalID VARCHAR(20) NOT NULL UNIQUE,
DateOfBirth DATE NOT NULL,
Gender VARCHAR(10),
UserID INT,
CONSTRAINT PK_Travelers PRIMARY KEY (TravelerID),

CONSTRAINT FK_Traveler_User
FOREIGN KEY (UserID)
REFERENCES Users(UserID)
ON DELETE CASCADE,

CONSTRAINT CHK_Traveler_Gender
CHECK (Gender IN ('Male', 'Female'))
);
GO
CREATE TABLE Airlines (
AirlineID INT,
AirlineName VARCHAR(100) NOT NULL,
Country VARCHAR(100),
ContactNumber VARCHAR(20),
CONSTRAINT PK_Airlines PRIMARY KEY (AirlineID)
);
GO
CREATE TABLE Airports (
AirportID INT,
AirportName VARCHAR(100) NOT NULL,
City VARCHAR(100),
Country VARCHAR(100),
CONSTRAINT PK_Airports PRIMARY KEY (AirportID)
);
GO
CREATE TABLE Trips (
TripID INT,
DepartureTime TIME,
ArrivalTime TIME,
TripDate DATE,
DepartureAirportID INT,
ArrivalAirportID INT,
Price INT,
AirlineID INT,
CONSTRAINT PK_Trips PRIMARY KEY (TripID),

CONSTRAINT FK_Trips_Airline
FOREIGN KEY (AirlineID)
REFERENCES Airlines(AirlineID),

CONSTRAINT FK_Trips_DepartureAirport
FOREIGN KEY (DepartureAirportID)
REFERENCES Airports(AirportID),

CONSTRAINT FK_Trips_ArrivalAirport
FOREIGN KEY (ArrivalAirportID)
REFERENCES Airports(AirportID)
);
GO
CREATE TABLE Seats (
SeatID INT,
SeatNumber VARCHAR(10) NOT NULL,
SeatClass VARCHAR(50) NOT NULL,
SeatPosition VARCHAR(20),
CONSTRAINT PK_Seats PRIMARY KEY (SeatID),

CONSTRAINT CHK_SeatClass
CHECK (SeatClass IN ('Economy', 'Business', 'First Class')),

CONSTRAINT CHK_SeatPosition
CHECK (SeatPosition IN ('Window', 'Aisle', 'Middle'))
);
GO
CREATE TABLE Tickets (
TicketID INT,
UserID INT NOT NULL,
TravelerID INT NOT NULL,
TripID INT NOT NULL,
SeatID INT NOT NULL,
BookingDate DATE NOT NULL,
Status VARCHAR(50) NOT NULL,
Price INT NOT NULL,
CONSTRAINT PK_Tickets PRIMARY KEY (TicketID),

CONSTRAINT FK_Tickets_User
FOREIGN KEY (UserID) REFERENCES Users(UserID),

CONSTRAINT FK_Tickets_Traveler
FOREIGN KEY (TravelerID) REFERENCES Travelers(TravelerID),

CONSTRAINT FK_Tickets_Trip
FOREIGN KEY (TripID) REFERENCES Trips(TripID),

CONSTRAINT FK_Tickets_Seat
FOREIGN KEY (SeatID) REFERENCES Seats(SeatID),

CONSTRAINT CHK_Ticket_Status
CHECK (Status IN ('Confirmed', 'Cancelled', 'Pending'))
);
GO
CREATE TABLE Payments (
PaymentID INT,
TicketID INT NOT NULL,
Amount INT NOT NULL,
PaymentDate DATE NOT NULL,
PaymentMethod VARCHAR(50) NOT NULL,
CONSTRAINT PK_Payments PRIMARY KEY (PaymentID),

CONSTRAINT FK_Payments_Ticket
FOREIGN KEY (TicketID)
REFERENCES Tickets(TicketID)
ON DELETE CASCADE,

CONSTRAINT CHK_Payment_Method
CHECK (PaymentMethod IN ('Credit Card', 'Debit Card', 'Apple Pay', 'Cash'))
);
GO
CREATE TABLE SeatReservations (
TripID INT,
SeatID INT,
CONSTRAINT PK_SeatReservations
PRIMARY KEY (TripID, SeatID),

CONSTRAINT FK_SR_Trip
FOREIGN KEY (TripID)
REFERENCES Trips(TripID)
ON DELETE CASCADE,

CONSTRAINT FK_SR_Seat
FOREIGN KEY (SeatID)
REFERENCES Seats(SeatID)
);
GO
CREATE TABLE Luggage (
LuggageID INT,
TicketID INT NOT NULL,
Weight INT NOT NULL,
Type VARCHAR(50),
NumberOfBags INT DEFAULT 1,
ExtraFee INT DEFAULT 0,
Status VARCHAR(50),
CONSTRAINT PK_Luggage PRIMARY KEY (LuggageID),

CONSTRAINT FK_Luggage_Ticket
FOREIGN KEY (TicketID)
REFERENCES Tickets(TicketID)
ON DELETE CASCADE,

CONSTRAINT CHK_Luggage_Status
CHECK (Status IN ('Checked-In', 'Pending', 'Lost'))
);
GO
CREATE TABLE Reviews (
ReviewID INT,
UserID INT NOT NULL,
TripID INT NOT NULL,
Rating INT NOT NULL,
Comment VARCHAR(255),
CONSTRAINT PK_Reviews PRIMARY KEY (ReviewID),

CONSTRAINT FK_Reviews_User
FOREIGN KEY (UserID)
REFERENCES Users(UserID)
ON DELETE CASCADE,

CONSTRAINT FK_Reviews_Trip
FOREIGN KEY (TripID)
REFERENCES Trips(TripID)
ON DELETE CASCADE,

CONSTRAINT CHK_Rating
CHECK (Rating BETWEEN 1 AND 5)
);
GO
/* =========================================
2. INSERT DATA
========================================= */
-- Users
INSERT INTO Users (UserID, FullName, Email, Password, PhoneNumber) VALUES
(1001, 'Nouf AlTurki', 'nouf.alturki@gmail.com', 'N123', '0502345671'),
(1002, 'Raghad Mohammed', 'raghad.towayan@gmail.com', 'R123', '0508765432'),
(1003, 'Wasayf Mohammed', 'wasayf.m@gmail.com', 'W123', '0504567891'),
(1004, 'Lana Yousef', 'lana.yousef@gmail.com', 'L123', '0505678912'),
(1005, 'Leen Alharbi', 'leen.harbi@gmail.com', 'L456', '0506789123'),
(1006, 'Jana Alharbi', 'jana.harbi@gmail.com', 'J123', '0507891234'),
(1007, 'Fahad Alqahtani', 'fahad.q@gmail.com', 'F123', '0501112233'),
(1008, 'Salman Alharbi', 'salman.h@gmail.com', 'S123', '0502223344'),
(1009, 'Nasser Aldossari', 'nasser.d@gmail.com', 'N456', '0503334455'),
(1010, 'Abdullah Almutairi', 'abdullah.m@gmail.com', 'A123', '0504445566'),
(1011, 'Mohammed Alotaibi', 'mohammed.o@gmail.com', 'M123', '0505556677'),
(1012, 'Khalid Alzahrani', 'khalid.z@gmail.com', 'K123', '0506667788');
GO
-- Travelers
INSERT INTO Travelers
(TravelerID, FullName, NationalID, DateOfBirth, Gender, UserID) VALUES
(2001, 'Nouf AlTurki', '1012345678', '1998-05-10', 'Female', 1001),
(2002, 'Raghad Mohammed', '1023456789', '1999-07-15', 'Female', 1002),
(2003, 'Wasayf Mohammed', '1034567890', '1997-11-25', 'Female', 1003),
(2004, 'Lana Yousef', '1045678901', '1998-09-12', 'Female', 1004),
(2005, 'Leen Alharbi', '1056789012', '2001-01-08', 'Female', 1005),
(2006, 'Jana Alharbi', '1067890123', '2002-06-18', 'Female', 1006),
(2007, 'Fahad Alqahtani', '1078901234', '1995-03-10', 'Male', 1007),
(2008, 'Salman Alharbi', '1089012345', '1996-07-20', 'Male', 1008),
(2009, 'Nasser Aldossari', '1090123456', '1994-11-05', 'Male', 1009),
(2010, 'Abdullah Almutairi', '1101234567', '1993-01-15', 'Male', 1010),
(2011, 'Mohammed Alotaibi', '1112345678', '1997-04-22', 'Male', 1011),
(2012, 'Khalid Alzahrani', '1123456789', '1996-12-30', 'Male', 1012);
GO
-- Airlines
INSERT INTO Airlines (AirlineID, AirlineName, Country, ContactNumber) VALUES
(201, 'Saudia', 'Saudi Arabia', '920022222'),
(202, 'Flynas', 'Saudi Arabia', '920001234'),
(203, 'Flyadeal', 'Saudi Arabia', '920000212');
GO
-- Airports
INSERT INTO Airports (AirportID, AirportName, City, Country) VALUES
(301, 'King Khalid International Airport', 'Riyadh', 'Saudi Arabia'),
(302, 'Prince Nayef bin Abdulaziz International Airport', 'Qassim', 'Saudi Arabia'),
(303, 'King Abdulaziz International Airport', 'Jeddah', 'Saudi Arabia'),
(304, 'King Fahd International Airport', 'Dammam', 'Saudi Arabia');
GO
-- Trips
INSERT INTO Trips (
TripID,
DepartureTime,
ArrivalTime,
TripDate,
DepartureAirportID,
ArrivalAirportID,
Price,
AirlineID
)
VALUES
(4001, '08:00', '09:00', '2026-05-01', 302, 301, 370, 201),
(4002, '10:30', '12:05', '2026-05-02', 301, 303, 480, 201),
(4003, '13:15', '14:45', '2026-05-03', 303, 304, 520, 202),
(4004, '16:20', '17:25', '2026-05-04', 304, 301, 310, 203),
(4005, '07:10', '08:15', '2026-05-05', 301, 302, 360, 201),
(4006, '21:05', '22:40', '2026-05-06', 303, 301, 420, 202),
(4007, '11:25', '12:55', '2026-05-07', 302, 303, 610, 201),
(4008, '14:30', '16:00', '2026-05-08', 304, 303, 560, 203),
(4009, '17:10', '18:15', '2026-05-09', 301, 304, 330, 202),
(4010, '20:45', '21:50', '2026-05-10', 302, 301, 355, 203);
GO
-- Seats
INSERT INTO Seats (SeatID, SeatNumber, SeatClass, SeatPosition) VALUES
(501, '1A', 'First Class', 'Window'),
(502, '4C', 'Business', 'Aisle'),
(503, '12F', 'Economy', 'Window'),
(504, '15B', 'Economy', 'Middle'),
(505, '2A', 'First Class', 'Window');
GO
-- Tickets
INSERT INTO Tickets (
TicketID, UserID, TravelerID, TripID, SeatID,
BookingDate, Status, Price
) VALUES
(6001, 1001, 2001, 4001, 501, '2026-04-20', 'Confirmed', 370),
(6002, 1002, 2002, 4002, 503, '2026-04-21', 'Confirmed', 480),
(6003, 1003, 2003, 4003, 505, '2026-04-22', 'Pending', 520),
(6004, 1004, 2004, 4004, 504, '2026-04-23', 'Cancelled', 310),
(6005, 1005, 2005, 4005, 502, '2026-04-24', 'Confirmed', 360),
(6006, 1006, 2006, 4006, 503, '2026-04-25', 'Confirmed', 420),
(6007, 1007, 2007, 4007, 504, '2026-04-26', 'Pending', 610),
(6008, 1008, 2008, 4008, 505, '2026-04-27', 'Confirmed', 560),
(6009, 1009, 2009, 4009, 501, '2026-04-28', 'Confirmed', 330),
(6010, 1010, 2010, 4010, 502, '2026-04-29', 'Pending', 355),
(6011, 1011, 2011, 4001, 503, '2026-04-30', 'Confirmed', 370),
(6012, 1012, 2012, 4002, 504, '2026-05-01', 'Confirmed', 480);
GO
-- Payments
INSERT INTO Payments (
PaymentID, TicketID, Amount, PaymentDate, PaymentMethod
) VALUES
(7001, 6001, 370, '2026-04-20', 'Credit Card'),
(7002, 6002, 480, '2026-04-21', 'Apple Pay'),
(7003, 6003, 520, '2026-04-22', 'Debit Card'),
(7004, 6004, 310, '2026-04-23', 'Cash'),
(7005, 6005, 360, '2026-04-24', 'Credit Card'),
(7006, 6006, 420, '2026-04-25', 'Apple Pay'),
(7007, 6007, 610, '2026-04-26', 'Debit Card'),
(7008, 6008, 560, '2026-04-27', 'Credit Card'),
(7009, 6009, 330, '2026-04-28', 'Apple Pay'),
(7010, 6010, 355, '2026-04-29', 'Cash'),
(7011, 6011, 370, '2026-04-30', 'Debit Card'),
(7012, 6012, 480, '2026-05-01', 'Credit Card');
GO
-- Seat Reservations
INSERT INTO SeatReservations (TripID, SeatID) VALUES
(4001, 501),(4001, 502),
(4002, 503),(4002, 504),
(4003, 505),(4004, 501),
(4005, 502),(4006, 503);
GO
-- Luggage
INSERT INTO Luggage (
LuggageID, TicketID, Weight, Type,
NumberOfBags, ExtraFee, Status
) VALUES
(8001, 6001, 20, 'Checked', 1, 0, 'Checked-In'),
(8002, 6002, 25, 'Checked', 2, 50, 'Checked-In'),
(8003, 6003, 15, 'Carry-on', 1, 0, 'Pending'),
(8004, 6004, 30, 'Checked', 2, 100, 'Lost'),
(8005, 6005, 18, 'Carry-on', 1, 0, 'Checked-In'),
(8006, 6006, 22, 'Checked', 1, 25, 'Checked-In'),
(8007, 6007, 16, 'Carry-on', 1, 0, 'Pending'),
(8008, 6008, 24, 'Checked', 2, 60, 'Checked-In'),
(8009, 6009, 19, 'Carry-on', 1, 0, 'Checked-In'),
(8010, 6010, 21, 'Checked', 1, 30, 'Pending');
GO
-- Reviews
INSERT INTO Reviews (ReviewID, UserID, TripID, Rating, Comment) VALUES
(9001, 1001, 4001, 5, 'Excellent'),
(9002, 1002, 4002, 4, 'Very Good'),
(9003, 1003, 4003, 3, 'Good'),
(9004, 1004, 4004, 2, 'Fair'),
(9005, 1005, 4005, 5, 'Excellent'),
(9006, 1006, 4006, 4, 'Very Good'),
(9007, 1007, 4007, 3, 'Good'),
(9008, 1008, 4008, 5, 'Excellent'),
(9009, 1009, 4009, 4, 'Very Good'),
(9010, 1010, 4010, 3, 'Good');
GO
/* =========================================
3. CREATE VIEWS
========================================= */
-- View 1: User Bookings
CREATE OR ALTER VIEW View_User_Bookings AS
SELECT
U.FullName,
T.TicketID,
Departure.City AS DepartureAirport,
Arrival.City AS ArrivalAirport,
T.Status
FROM Users U
JOIN Tickets T ON U.UserID = T.UserID
JOIN Trips Tr ON T.TripID = Tr.TripID
JOIN Airports Departure
ON Tr.DepartureAirportID = Departure.AirportID
JOIN Airports Arrival
ON Tr.ArrivalAirportID = Arrival.AirportID;
GO
SELECT * FROM View_User_Bookings;
GO
-- View 2: Upcoming Trips
CREATE OR ALTER VIEW View_Upcoming_Trips AS
SELECT
Tr.TripID,
Departure.City AS DepartureAirport,
Arrival.City AS ArrivalAirport,
Tr.TripDate
FROM Trips Tr
JOIN Airports Departure
ON Tr.DepartureAirportID = Departure.AirportID
JOIN Airports Arrival
ON Tr.ArrivalAirportID = Arrival.AirportID
WHERE Tr.TripDate >= '2026-05-05';
GO
SELECT * FROM View_Upcoming_Trips;
GO
-- View 3: Confirmed Tickets
CREATE OR ALTER VIEW View_Confirmed_Tickets AS
SELECT TicketID, UserID, TripID, Price
FROM Tickets
WHERE Status = 'Confirmed'
WITH CHECK OPTION;
GO
SELECT * FROM View_Confirmed_Tickets;
GO
-- View 4: Heavy Luggage
CREATE OR ALTER VIEW View_Luggage_Heavy AS
SELECT TicketID, Weight, ExtraFee
FROM Luggage
WHERE Weight > 20;
GO
SELECT * FROM View_Luggage_Heavy;
GO
-- View 5: High Reviews
CREATE OR ALTER VIEW View_Reviews_High AS
SELECT UserID, TripID, Rating
FROM Reviews
WHERE Rating >= 4
WITH CHECK OPTION;
GO
SELECT * FROM View_Reviews_High;
GO
-- View 6: Airline Trips
CREATE OR ALTER VIEW View_Airline_Trips AS
SELECT
A.AirlineName,
T.TripID,
Departure.City AS DepartureAirport,
Arrival.City AS ArrivalAirport,
T.Price
FROM Airlines A
JOIN Trips T ON A.AirlineID = T.AirlineID
JOIN Airports Departure
ON T.DepartureAirportID = Departure.AirportID
JOIN Airports Arrival
ON T.ArrivalAirportID = Arrival.AirportID;
GO
SELECT * FROM View_Airline_Trips;
GO
-- View 7: Trip Prices
CREATE OR ALTER VIEW View_Trip_Prices AS
SELECT
T.TripID,
Departure.City AS DepartureAirport,
Arrival.City AS ArrivalAirport,
T.Price
FROM Trips T
JOIN Airports Departure
ON T.DepartureAirportID = Departure.AirportID
JOIN Airports Arrival
ON T.ArrivalAirportID = Arrival.AirportID
WHERE T.Price < 400;
GO
SELECT * FROM View_Trip_Prices;
GO
/* =========================================
4. SQL QUERIES
========================================= */
-- Query 1: Total Bookings per User
SELECT
Users.UserID,
Users.FullName,
COUNT(Tickets.TicketID) AS TotalBookings
FROM Users
JOIN Tickets ON Users.UserID = Tickets.UserID
GROUP BY Users.UserID, Users.FullName;
GO
-- Query 2: Airline Trips Sorted by Price
SELECT
Airlines.AirlineName,
Trips.TripID,
Departure.City AS DepartureAirport,
Arrival.City AS ArrivalAirport,
Trips.Price
FROM Trips
JOIN Airlines
ON Trips.AirlineID = Airlines.AirlineID
JOIN Airports Departure
ON Trips.DepartureAirportID = Departure.AirportID
JOIN Airports Arrival
ON Trips.ArrivalAirportID = Arrival.AirportID
ORDER BY Trips.Price ASC;
GO
-- Query 3: Confirmed Tickets
SELECT
Users.FullName,
Tickets.TicketID,
Tickets.Price
FROM Tickets
JOIN Users ON Tickets.UserID = Users.UserID
WHERE Tickets.Status = 'Confirmed';
GO
-- Query 4: Total Payments per Customer
SELECT
Users.UserID,
Users.FullName AS Customer_Name,
COUNT(DISTINCT Tickets.TicketID) AS Total_Tickets,
SUM(Payments.Amount) AS Total_Amount_Paid
FROM Users
JOIN Tickets ON Users.UserID = Tickets.UserID
JOIN Payments ON Tickets.TicketID = Payments.TicketID
WHERE Tickets.Status = 'Confirmed'
GROUP BY Users.UserID, Users.FullName
HAVING SUM(Payments.Amount) > 400
ORDER BY Total_Amount_Paid DESC;
GO