/*************************************************************************************************************
Date: Fall 2023
Assignment: Implement the SQL Database Solution for Case Study: Pitts Fitness Centers
*************************************************************************************************************/

--CREATE SCHEMA
--Create Schema FA23

--******************************************CREATE TABLES********************************************************

CREATE TABLE FA23.LOCATION
(
	LocationID		INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	LocationName	VARCHAR(50)	NOT NULL,	
	StreetNum		INT	NULL,
	StreetName		VARCHAR(60)	NULL,
	City			VARCHAR (60)	NULL,
	State			CHAR(2)	NULL,
	Zip				CHAR(5)	NULL,
	Email			VARCHAR(100) NULL,
	Phone			VARCHAR(25)	NOT NULL,
	ManagerID		INT	NOT NULL ,
	CreatedDate		DATETIME	NOT NULL	 
);


CREATE TABLE FA23.CLASS
(
	ClassID			INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ClassName		VARCHAR(50)	NOT NULL,	
	Description		VARCHAR(400)	NULL,	
	Duration		INT	NOT NULL,	
	Capacity		INT	NOT NULL,	
	Price			MONEY	NOT NULL,	
	Room			VARCHAR(25)	NULL,	
	Status			CHAR(2)	NULL,	
	CreatedDate		DATETIME	NOT NULL	  

);

CREATE TABLE FA23.PAYMENT
(
	PaymentID		INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	PaymentType		CHAR(5)	NOT NULL,	
	CCNum			BIGINT	NOT NULL,	
	CCExpMonth		INT	NOT NULL,	
	CCExpYear		INT	NOT NULL,	
	CCSecNum		INT	NOT NULL,	
	Status			CHAR(2)	NULL,	
	CreatedDate		DATETIME	NOT NULL	 DEFAULT GetDate()
);

CREATE TABLE FA23.CUSTOMER
(
	CustomerID		INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	FirstName		VARCHAR(60)	NOT NULL,	
	LastName		VARCHAR(60)	NOT NULL,	
	StreetNum		INT	NULL,	
	StreetName		VARCHAR(60)	NULL,	
	City			VARCHAR(60)	NULL,	
	State			CHAR(2)	NULL,	
	Zip				CHAR(5)	NULL,	
	Phone			VARCHAR(10)	NULL,	
	Email			VARCHAR(100)	NULL,	
	Gender			CHAR(2)	NOT NULL,	
	PaymentID		INT	NOT NULL REFERENCES FA23.PAYMENT(PaymentID),
	JoinDate		DATETIME	NOT NULL	 

);


CREATE TABLE FA23.EMPLOYEE
(
	EmployeeID		INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	LocationID		INT	NOT NULL REFERENCES FA23.LOCATION(LocationID),
	FirstName		VARCHAR(60)	NOT NULL,	
	LastName		VARCHAR(60)	NOT NULL,	 
	Title			VARCHAR(30)	NULL,
	Phone			VARCHAR(10)	NULL,	
	Email			VARCHAR(100)	NULL,	
	Gender			CHAR(2)	NOT NULL,	
	status			CHAR(2)	NULL,	
	HireDate		DATETIME	NOT NULL	
);

CREATE TABLE FA23.INSTRUCTOR
(
	InstructorID	INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	EmployeeID		INT	NOT NULL REFERENCES FA23.EMPLOYEE(EmployeeID)

);


CREATE TABLE FA23.INSTRUCTOR_CLASS
(
	InstructorClassID	INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	InstructorID		INT	NOT NULL REFERENCES FA23.INSTRUCTOR(InstructorID),
	ClassID				INT	NOT NULL	REFERENCES FA23.CLASS(ClassID),
	LocationID			INT	NOT NULL	REFERENCES FA23.LOCATION(LocationID),
	ActivityDate		DATETIME	NULL,	
	StartTime			TIME	NOT NULL	
);

CREATE TABLE FA23.CUSTOMER_CLASS
(
	CustClassID			INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	CustomerID			INT	NOT NULL REFERENCES FA23.CUSTOMER(CustomerID),
	InstructorClassID	INT	NOT NULL REFERENCES FA23.INSTRUCTOR_CLASS(InstructorClassID),
	TotalCost			MONEY	NULL
);

CREATE TABLE FA23.RESERVATION
(
	ReservationID		INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	CustomerID			INT	NOT NULL REFERENCES FA23.CUSTOMER(CustomerID),
	InstructorClassID	INT	NOT NULL REFERENCES FA23.INSTRUCTOR_CLASS(InstructorClassID),
	EmployeeID			INT	NOT NULL REFERENCES FA23.EMPLOYEE(EmployeeID),
	Status				CHAR(2)	NOT NULL,	
	ReservationDate		DATETIME	NOT NULL
);

CREATE TABLE FA23.RES_HISTORY
(
	ResHistoryID	INT	NOT NULL IDENTITY(1,1) PRIMARY KEY,
	ReservationID	INT	NOT NULL REFERENCES FA23.RESERVATION(ReservationID),
	CustomerID	INT	NOT NULL	 REFERENCES FA23.CUSTOMER(CustomerID),
	ReservationDate	DATETIME	NOT NULL	
);