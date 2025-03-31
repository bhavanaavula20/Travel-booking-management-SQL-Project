
 
 create database New_Project;
 use New_Project;
 
 CREATE TABLE IF NOT EXISTS CustomerDetails(
    CustomerID INT PRIMARY KEY,
    FullName VARCHAR(50),
    Email VARCHAR(50),
    Phone VARCHAR(10),
    Identity_proof VARCHAR(100)
);


INSERT INTO CustomerDetails(CustomerID, FullName, Email, Phone, Identity_proof)
VALUES
    (1, 'Amishi Desai', 'desai014@gmail.com', '9345698768', 'Aadhar'),
    (2, 'Chahel Gupta', 'chx2904@gmail.com', '9876543210', 'Passport'),
    (3, 'Aneri Patel', 'ap2404@gmail.com', '7890123456', 'Driver License'),
    (4, 'Demira Ramnani', 'demram23@gmail.com', '2345678901', 'Aadhar'),
    (5, 'Shloka Arya', 'shloksrain@gmail.com', '8901234567', 'Passport'),
    (6, 'Vansh Mehta', 'vm567@gmail.com', '3456789012', 'Driver License'),
    (7, 'Shital Nagvenkar', 'shtlnad@gmail.com', '9012345678', 'Aadhar'),
    (8, 'Vikram Nadkarni', 'viks01@gmail.com', '4567890123', 'Passport'),
    (9, 'Aryan Shah', 'arshah56@gmail.com', '0123456789', 'Driver License'),
    (10, 'Veer Patil', 'vp3til@gmail.com', '9398631146', 'Aadhar');
    
     
CREATE TABLE IF NOT EXISTS Destination (
    DestinationID INT PRIMARY KEY,
    DestinationName VARCHAR(50),
    Distance INT,
    Country VARCHAR(50)
);

INSERT INTO Destination (DestinationID, DestinationName, Distance, Country)
VALUES
    (201, 'Mumbai', 0, 'India'), 
    (202, 'Pune', 200, 'India'),
    (203, 'Chennai', 439, 'India'),
    (204, 'Bangalore', 5674, 'India'),
    (205, 'Hyderabad', 7656, 'India'),
    (206, 'Delhi', 987, 'India'),
    (207, 'Kolkata', 0, 'India'),
    (301, 'London', 12768, 'United Kingdom'),
    (302, 'Singapore', 5567, 'Singapore'),
    (303, 'Dubai', 767, 'United Arab Emirates'),
    (304, 'Frankfurt', 7898, 'Germany'),
    (305, 'Sydney', 9783, 'Australia'),
    (101, 'Ahmedabad', 0, 'India'), 
    (102, 'Jaipur', 838, 'India'),
    (103, 'Indore', 595, 'India'),
    (104, 'Lucknow',895,'India');  
    
    CREATE TABLE IF NOT EXISTS Trains(
    TrainID INT PRIMARY KEY,
    TrainName VARCHAR(50),
    T_DepartureTime TIME,
    T_ArrivalTime TIME,
    T_Origin VARCHAR(50),
    T_Destination VARCHAR(50),
    DestinationID INT,
    FOREIGN KEY (DestinationID) REFERENCES Destination(DestinationID)
);

INSERT INTO Trains(TrainID, TrainName, T_DepartureTime, T_ArrivalTime, T_Origin, T_Destination, DestinationID)
VALUES
    (1, 'Rajdhani Express', '08:00:00', '15:00:00', 'Delhi', 'Mumbai', 201), 
    (2, 'Shatabdi Express', '09:00:00', '14:00:00', 'Mumbai', 'Pune', 202), 
    (3, 'Duronto Express', '10:00:00', '17:00:00', 'Delhi', 'Chennai', 203), 
    (4, 'Garib Rath Express', '11:00:00', '18:00:00', 'Kolkata', 'Bangalore', 204), 
    (5, 'Shatabdi Express', '12:00:00', '19:00:00', 'Chennai', 'Hyderabad', 205), 
    (6, 'Rajdhani Express', '13:00:00', '20:00:00', 'Bangalore', 'Delhi', 206), 
    (7, 'Duronto Express', '14:00:00', '21:00:00', 'Mumbai', 'Kolkata', 207), 
    (8, 'Garib Rath Express', '15:00:00', '22:00:00', 'Pune', 'Chennai', 203), 
    (9, 'Shatabdi Express', '16:00:00', '23:00:00', 'Delhi', 'Hyderabad', 205), 
    (10, 'Rajdhani Express', '17:00:00', '00:00:00', 'Kolkata', 'Mumbai', 201); 
    
    
    CREATE TABLE IF NOT EXISTS Flights(
    FlightID INT PRIMARY KEY,
    FlightNumber VARCHAR(10),
    Airline VARCHAR(50),
    FL_DepartureTime DATETIME,
    FL_ArrivalTime DATETIME,
    FL_Origin VARCHAR(50),
    FL_Destination VARCHAR(50),
    DestinationID INT,
    FOREIGN KEY (DestinationID) REFERENCES Destination(DestinationID)
);

INSERT INTO Flights(FlightID, FlightNumber, Airline, FL_DepartureTime, FL_ArrivalTime, FL_Origin, FL_Destination, DestinationID)
VALUES
    (1, 'AI101', 'Air India', '2024-03-18 08:00:00', '2024-03-18 10:00:00', 'Delhi', 'Mumbai', 201), 
    (2, 'AI102', 'Air India', '2024-03-18 10:00:00', '2024-03-18 12:00:00', 'Mumbai', 'Pune', 202),
    (3, 'AI103', 'Air India', '2024-03-18 12:00:00', '2024-03-18 15:00:00', 'Delhi', 'Chennai', 203), 
    (4, 'AI104', 'Air India', '2024-03-18 14:00:00', '2024-03-18 17:00:00', 'Mumbai', 'Bangalore', 204),
    (5, 'BA101', 'British Airways', '2024-03-18 16:00:00', '2024-03-18 18:00:00', 'Delhi', 'London', 301), 
    (6, 'SQ101', 'Singapore Airlines', '2024-03-18 18:00:00', '2024-03-18 20:00:00', 'Mumbai', 'Singapore', 302), 
    (7, 'EK101', 'Emirates', '2024-03-18 20:00:00', '2024-03-19 02:00:00', 'Delhi', 'Dubai', 303),
    (8, 'LH101', 'Lufthansa', '2024-03-18 22:00:00', '2024-03-19 01:00:00', 'Mumbai', 'Frankfurt', 304), 
    (9, 'QF101', 'Qantas', '2024-03-19 01:00:00', '2024-03-19 06:00:00', 'Delhi', 'Sydney', 305), 
    (10, 'SQ104', 'Singapore Airlines', '2024-03-19 03:00:00', '2024-03-19 05:00:00', 'Mumbai', 'Singapore', 302); 
    


CREATE TABLE IF NOT EXISTS Buses(
    BusID INT PRIMARY KEY,
    BusNumber VARCHAR(10),
    Operator VARCHAR(50),
    B_DepartureTime DATETIME,
    B_ArrivalTime DATETIME,
    B_Origin VARCHAR(50),
    B_Destination VARCHAR(50),
	DestinationID INT,
    FOREIGN KEY (DestinationID) REFERENCES Destination(DestinationID)
);

INSERT INTO Buses(BusID, BusNumber, Operator, B_DepartureTime, B_ArrivalTime, B_Origin, B_Destination, DestinationID)
VALUES
    (1, 'B001', 'ABC Bus Services', '2024-03-18 08:00:00', '2024-03-18 10:00:00', 'Delhi', 'Mumbai', 201), 
    (2, 'B002', 'XYZ Travels', '2024-03-18 10:00:00', '2024-03-18 12:00:00', 'Mumbai', 'Pune', 202), 
    (3, 'B003', 'RST Tours', '2024-03-18 12:00:00', '2024-03-18 15:00:00', 'Delhi', 'Chennai', 203), 
    (4, 'B004', 'PQR Roadways', '2024-03-18 14:00:00', '2024-03-18 17:00:00', 'Mumbai', 'Bangalore', 204), 
    (5, 'B005', 'LMN Travels', '2024-03-18 16:00:00', '2024-03-18 18:00:00', 'Delhi', 'Hyderabad', 205),
    (6, 'B006', 'DEF Bus Lines', '2024-03-18 18:00:00', '2024-03-18 20:00:00', 'Mumbai', 'Kolkata', 206), 
    (7, 'B007', 'GHI Tours', '2024-03-18 20:00:00', '2024-03-19 02:00:00', 'Delhi', 'Lucknow',104), 
    (8, 'B008', 'JKL Bus Services', '2024-03-18 22:00:00', '2024-03-19 01:00:00', 'Mumbai', 'Ahmedabad', 101), 
    (9, 'B009', 'MNO Roadways', '2024-03-19 01:00:00', '2024-03-19 06:00:00', 'Delhi', 'Jaipur', 102), 
    (10, 'B010', 'PQR Travels', '2024-03-19 03:00:00', '2024-03-19 05:00:00', 'Mumbai', 'Indore', 103); 
    
    
    
    CREATE TABLE IF NOT EXISTS Cruise(
    CruiseID INT PRIMARY KEY,
    CruiseName VARCHAR(50),
    CR_DepartureTime DATETIME,
    CR_ArrivalTime DATETIME,
    CR_Origin VARCHAR(50),
    CR_Destination VARCHAR(50),
	DestinationID INT,
    FOREIGN KEY (DestinationID) REFERENCES Destination(DestinationID)
);

INSERT INTO Cruise(CruiseID, CruiseName, CR_DepartureTime, CR_ArrivalTime, CR_Origin, CR_Destination, DestinationID)
VALUES
    (1, 'London to Sydney Cruise', '2024-03-18 08:00:00', '2024-03-18 20:00:00', 'London', 'Sydney', 305), 
    (2, 'Singapore to Dubai Cruise', '2024-03-18 10:00:00', '2024-03-18 22:00:00', 'Singapore', 'Dubai', 303), 
    (3, 'Frankfurt to Sydney Cruise', '2024-03-18 12:00:00', '2024-03-18 23:00:00', 'Frankfurt', 'Sydney', 305), 
    (4, 'Dubai to London Cruise', '2024-03-18 14:00:00', '2024-03-18 23:00:00', 'Dubai', 'London', 301), 
    (5, 'Sydney to Singapore Cruise', '2024-03-18 16:00:00', '2024-03-19 01:00:00', 'Sydney', 'Singapore', 302), 
    (6, 'London to Dubai Cruise', '2024-03-18 18:00:00', '2024-03-19 04:00:00', 'London', 'Dubai', 303), 
    (7, 'Singapore to Sydney Cruise', '2024-03-18 20:00:00', '2024-03-19 08:00:00', 'Singapore', 'Sydney', 305), 
    (8, 'Frankfurt to Dubai Cruise', '2024-03-18 22:00:00', '2024-03-19 10:00:00', 'Frankfurt', 'Dubai', 303), 
    (9, 'Dubai to Singapore Cruise', '2024-03-19 01:00:00', '2024-03-19 10:00:00', 'Dubai', 'Singapore', 302), 
    (10, 'Sydney to London Cruise', '2024-03-19 03:00:00', '2024-03-19 16:00:00', 'Sydney', 'London', 301); 
    
    
    
    CREATE TABLE IF NOT EXISTS Payment(
    PaymentID INT PRIMARY KEY,
    PaymentMethod VARCHAR(50),
    PaymentAmount DECIMAL(10, 2),
    PaymentDate DATE,
    CustomerID INT,
    FOREIGN KEY (CustomerID) REFERENCES CustomerDetails(CustomerID)
);

INSERT INTO Payment(PaymentID, PaymentMethod, PaymentAmount, PaymentDate, CustomerID)
VALUES
    (101, 'Credit Card', 5000.00, '2023-01-15', 1),
    (102, 'Debit Card', 3000.00, '2023-02-20', 2),
    (103, 'Net Banking', 2000.00, '2023-03-25', 3),
    (104, 'UPI', 4000.00, '2023-04-30', 4),
    (105, 'Cash', 2500.00, '2023-05-05', 5),
    (106, 'Credit Card', 3500.00, '2023-06-10', 6),
    (107, 'Debit Card', 2800.00, '2023-07-15', 7),
    (108, 'Net Banking', 1800.00, '2023-08-20', 8),
    (109, 'UPI', 4200.00, '2023-09-25', 9),
    (110, 'Cash', 2300.00, '2023-10-30', 10);
    
   CREATE TABLE IF NOT EXISTS Car(
    CarID INT PRIMARY KEY,
    CarModel VARCHAR(50),
    PlateNumber VARCHAR(20),
    Capacity INT,
    C_Origin VARCHAR(50),
    C_Destination VARCHAR(50),
	DestinationID INT,
    FOREIGN KEY (DestinationID) REFERENCES Destination(DestinationID)
);

INSERT INTO Car(CarID, CarModel, PlateNumber, Capacity, C_Origin, C_Destination, DestinationID)
VALUES
    (101, 'Toyota Innova', 'MH01AB1234', 7, 'Mumbai', 'Pune', 202),
    (102, 'Maruti Swift', 'MH02CD5678', 5, 'Pune', 'Mumbai', 201),
    (103, 'Honda City', 'MH03EF9012', 5, 'Chennai', 'Bangalore', 204),
    (104, 'Hyundai i20', 'MH04GH3456', 5, 'Bangalore', 'Hyderabad', 205),
    (105, 'Ford EcoSport', 'MH05IJ6789', 5, 'Hyderabad', 'Chennai', 203),
    (106, 'Volkswagen Polo', 'MH06KL0123', 5, 'Delhi', 'Kolkata', 207),
    (107, 'Toyota Corolla', 'MH07MN3456', 5, 'Kolkata', 'Delhi', 206),
    (108, 'Renault Kwid', 'MH08OP6789', 5, 'Ahmedabad', 'Jaipur', 102),
    (109, 'Honda Civic', 'MH09QR0123', 5, 'Jaipur', 'Indore', 103),
    (110, 'Mahindra Scorpio', 'MH10ST3456', 7, 'Indore', 'Ahmedabad', 101); 
    

    
    CREATE TABLE IF NOT EXISTS Booking(
    BookingID INT PRIMARY KEY,
    CustomerID INT,
    Booking_status VARCHAR(20),
    PaymentID INT,
    Booking_time DATETIME,
    Transport VARCHAR(50) NOT NULL,
    Origin VARCHAR(50) NOT NULL,
    Destination VARCHAR(50) NOT NULL,
    FOREIGN KEY (CustomerID) REFERENCES CustomerDetails(CustomerID),
    FOREIGN KEY (PaymentID) REFERENCES Payment(PaymentID));

INSERT INTO Booking(BookingID, CustomerID, Booking_status, PaymentID, Booking_time, Transport, Origin, Destination)
VALUES
    (1, 1, 'Confirmed', 101, '2024-03-10 08:00:00', (SELECT Operator FROM Buses WHERE DestinationID = 201), 'Delhi','Mumbai'),
    (2, 2, 'Confirmed', 102, '2024-03-10 10:00:00', (SELECT PlateNumber FROM Car WHERE DestinationID = 202), 'Mumbai', 'Pune'),
    (3, 3, 'Confirmed', 103, '2024-03-10 12:00:00', (SELECT FlightNumber FROM Flights WHERE DestinationID = 203), 'Delhi', 'Chennai'),
    (4, 4, 'Confirmed', 104, '2024-03-10 14:00:00', (SELECT FlightNumber FROM Flights WHERE DestinationID = 204), 'Mumbai', 'Bangalore'),
    (5, 5, 'Confirmed', 105, '2024-03-10 16:00:00', (SELECT CruiseName FROM Cruise WHERE DestinationID = 303 AND CR_Origin='Singapore'), 'Singapore', 'Dubai'),
    (6, 6, 'Confirmed', 106, '2024-03-10 18:00:00', (SELECT Operator FROM Buses WHERE DestinationID = 206), 'Mumbai', 'Kolkata'),
    (7, 7, 'Confirmed', 107, '2024-03-10 20:00:00', (SELECT PlateNumber FROM Car WHERE DestinationID = 103), 'Jaipur', 'Indore' ),
    (8, 8, 'Confirmed', 108, '2024-03-10 22:00:00', (SELECT TrainName FROM Trains  WHERE DestinationID = 204), 'Kolkata', 'Bangalore'),
    (9, 9, 'Confirmed', 109, '2024-03-11 01:00:00', (SELECT FlightNumber FROM Flights WHERE DestinationID = 203), 'Delhi', 'Chennai'),
    (10, 10, 'Confirmed', 110, '2024-03-11 03:00:00', (SELECT CruiseName FROM Cruise WHERE DestinationID = 301 AND CR_Origin='Sydney'), 'Sydney', 'London');


UPDATE CustomerDetails SET Identity_proof = 'Aadhar' WHERE CustomerID = 2;
SELECT * FROM CustomerDetails;


CREATE TABLE CustomerTravelDoc AS SELECT CustomerID, FullName, Identity_proof FROM CustomerDetails;
SELECT * FROM CustomerTravelDoc;

ALTER TABLE CustomerTravelDoc RENAME TO Customer_documents;
SELECT * FROM Customer_documents;

ALTER TABLE CustomerDetails
ADD CONSTRAINT CK_email_format CHECK (Email LIKE '%@gmail.com');

ALTER TABLE Booking
MODIFY COLUMN Booking_status VARCHAR(20) NOT NULL DEFAULT 'Pending';
SELECT * FROM Booking;

UPDATE Payment SET PaymentAmount = PaymentAmount * 1.1 WHERE CustomerID IN (1, 3, 5) AND PaymentMethod = 'Credit Card';
SELECT * FROM Payment;

SELECT * FROM Flights WHERE Airline LIKE 'A%A';



SET SQL_SAFE_UPDATES = 0;
UPDATE Destination SET Distance = 500 WHERE Distance = 0;
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM Destination WHERE Country = 'India' AND Distance BETWEEN 500 AND 1500;

SELECT DISTINCT Country FROM Destination;
DESC Booking;

SELECT b1.BookingID AS BookingID1,
 b1.CustomerID AS CustomerID1, 
 b1.Booking_status AS BookingStatus1,
 b2.BookingID AS BookingID2, 
 b2.CustomerID AS CustomerID2,
 b2.Booking_status AS BookingStatus2 
FROM Booking b1, Booking b2 
WHERE b1.Origin = b2.Destination;

SELECT DISTINCT d.DestinationName, t.TrainName AS Train, f.FlightNumber AS Flight, b.BusNumber AS Bus, c.CruiseName AS Cruise
FROM Destination d LEFT JOIN Trains t ON d.DestinationID = t.DestinationID
LEFT JOIN Flights a ON d.DestinationID = f.DestinationID
LEFT JOIN Buses b ON d.DestinationID = b.DestinationID
LEFT JOIN Cruise c ON d.DestinationID = c.DestinationID
WHERE d.DestinationName = 'Singapore';


SELECT 
    d.DestinationName,
    GROUP_CONCAT(DISTINCT t.TrainName) AS Train,
    GROUP_CONCAT(DISTINCT f.FlightNumber) AS Flight,
    GROUP_CONCAT(DISTINCT b.BusNumber) AS Bus,
    GROUP_CONCAT(DISTINCT c.CruiseName) AS Cruise
FROM 
    Destination d
LEFT JOIN 
    Trains t ON d.DestinationID = t.DestinationID
LEFT JOIN 
    Flights f ON d.DestinationID = f.DestinationID
LEFT JOIN 
    Buses b ON d.DestinationID = b.DestinationID
LEFT JOIN 
    Cruise c ON d.DestinationID = c.DestinationID
WHERE 
    d.DestinationName = 'Singapore'
GROUP BY 
    d.DestinationName;
    
    

SELECT B.BookingID, B.CustomerID, B.Booking_status,B.PaymentID, B.Booking_time, B.Transport, B.Origin, B.Destination, C.FullName,C.Email, C.Phone, C.Identity_proof
FROM Booking AS B JOIN CustomerDetails AS C ON B.CustomerID = C.CustomerID
JOIN Payment AS P ON B.PaymentID = P.PaymentID
WHERE P.PaymentMethod = 'Credit Card';


SELECT C.CustomerID, C.FullName, C.Email, C.Phone, C.Identity_proof, P.PaymentAmount FROM Payment AS P
JOIN CustomerDetails AS C ON P.CustomerID = C.CustomerID ORDER BY P.PaymentAmount DESC;

SELECT COUNT(*) AS Total_Mumbai_flights FROM Flights WHERE FL_Origin = 'Mumbai' OR FL_Destination = 'Mumbai';

SELECT T_Destination AS Destination FROM Trains INTERSECT 
SELECT Fl_Destination AS Destination FROM Flights;
SELECT B_Destination FROM Buses WHERE B_Destination NOT IN (SELECT C_Destination FROM Car);


SELECT CustomerID, COUNT(*) AS CustomerBookings FROM Booking GROUP BY CustomerID HAVING COUNT(*) <= 2;

SELECT SUM(PaymentAmount) AS Total_Income FROM Payment;

CREATE VIEW Booking_Summary AS
SELECT COUNT(*) AS TotalBookings,SUM(p.PaymentAmount) AS TotalAmountPaid, AVG(p.PaymentAmount) AS AverageAmount
FROM Booking b JOIN Payment p ON b.PaymentID = p.PaymentID;
SELECT * FROM Booking_Summary;

CREATE VIEW DestinationS_Booked AS
SELECT Destination, COUNT(*) AS BookingCount FROM Booking GROUP BY Destination;
SELECT * FROM DestinationS_Booked;

SELECT Destination.DestinationID, Destination.DestinationName FROM Destination
 LEFT JOIN Booking ON Destination.DestinationID = Booking.Destination
 WHERE Booking.Destination IS NULL;
 
 SET SQL_SAFE_UPDATES = 0;
DELETE FROM Booking WHERE Transport IN (SELECT TrainName FROM Trains);
SET SQL_SAFE_UPDATES = 1;
SELECT * FROM Booking;

SELECT Transport, COUNT(*) AS BookingCount
FROM Booking GROUP BY Transport ORDER BY COUNT(*) DESC LIMIT 1;

SELECT * FROM Destination;








    
    
    
    
    