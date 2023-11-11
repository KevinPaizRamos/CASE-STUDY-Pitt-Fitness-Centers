/*************************************************************************************************************
Date: Fall 2023
Assignment: Implement the SQL Database Solution for Case Study: Pitts Fitness Centers
*************************************************************************************************************/

--******************************************LOAD (Insert) Data***********************************************

--LOCATION
INSERT INTO FA23.LOCATION (LocationName, StreetNum, StreetName, City, State, Zip, Email, Phone, ManagerID, CreatedDate)
VALUES 
('Philadelphia', 1983, 'Lakeville Rd',	'Philadelphia',	'PA', '11550', 'customerservice1@PFC.com',	'5163235555',1,	'2020-01-01'),
('Pittsburgh',	96,	'Winchester Rd', 'Pittsburgh', 'PA', '09865',	'customerservice2@PFC.com',	'2012569999', 9,'2021-10-08'),
('Bradford',	100, 'Terminal Z',	'Bradford',	'PA',	'07899',	'customerservice3@PFC.com',	'2707689999', 19,	'2022-10-08');

--SELECT * from FA23.LOCATION;


--CLASS
INSERT INTO FA23.CLASS (ClassName, Description, Duration, Capacity, Status, Room, Price, CreatedDate)
VALUES
 ('Beginners Strength 101',	'Strength training designed just for the starters',	45,	25,	'A',	'Group Fitness',	85.00,	'2022-02-01'),
 ('Zoomba',	'Dance, Dance, Dance your way to better health',	30,	25,	'A',	'Group Fitness',	125.00,	'2022-02-02'),
 ('Cardio Sculpt 60',	'Feel lighter, stronger and happier after high-intensity, dance-based cardio followed by strength training and stretching',	60,	30,	'A',	'Sculpt Room',	149.00,	'2022-02-03'),
('Power Sculpt 60',	'Fire up your metabolism in this class that combines high-intensity, dance-based cardio with intervals of targeted strength work',	60,	30,	'A',	'Sculpt Room',	130.00,	'2022-02-04'),
('Indoor Cycling',	'Get fit with our indoor track. Ride to better fitness.',	45,	10,	'A',	'Track B',	170.00,	'2022-02-05'),
('Core Focused',	'Feel better and stronger with super structured core',	45,	25,	'A',	'Sculpt Room',	125.00,	'2022-02-06'),
('Abs+Stretch',	'100% abdominal!  We not only take your abs through a gut-busting, mid-line slimming workout, we also target the lumbar spine, glutes, hip flexors, and hamstrings.  We spend 30 minutes of concentrated work on your core stability and invest 15 minutes into a diverse flexibility component that improves your rest and recovery.', 	45,	25,	'A',	'Weights Room',	125.00,	'2022-02-07'),
('Strong-n-firm',	'Strong-n-Firm is our signature class that encompasses our proprietary approach to strength and total body conditioning. It is a 50-55 minute experience that targets all major and assisting muscle groups by including basic strength training exercises combined with intervals of various cardiovascular modalities.', 	50,	25	,'A'	,'Group Fitness',	149.00,	'2022-02-08'),
('Arms+Abs+Glutes',	'This class focuses on Upper Body and Core Training. This workout is designed to strengthen your shoulders, back, chest, biceps, and triceps, plus there is a focus on Abs and Glutes!',	45,	25,	'A',	'Weights Room',	125.00,	'2022-02-09'),
('Super Circuit',	'Fast paced workout to meet your every need',	50,	15,	'A',	'Cycle Room',	149.00,	'2022-02-10'),
('Cycle Express',	'If you come, you can build it! (A better body that is!). Enjoy our 45 minute express class that is set to a black-lit ride that helps you to focus and take in the music that makes the ride!',	45,	10,	'A'	,'Cycle Room',	170.00,	'2022-02-11');

--SELECT * from FA23.CLASS;


--PAYMENT
INSERT INTO FA23.PAYMENT (PaymentType, CCNum, CCExpMonth, CCExpYear, CCSecNum, Status)
VALUES
('V', 	1921910212139810,	3,	25,	923,	'A'),
('MC',	7813211898711280,	5,	25,	120,	'A'),
('AMEX',	7896910213981080,	2,	23,	1224,	'A'),
('V',	4200625829358760,	6,	25,	255,	'A'),
('V',	6300211898731260,	9,	23,	953,	'A'),
('MC',	7812349872568890,	12,	24,	305,	'A'),
('MC',	7812987656783420,	3,	27,	234,	'A'),
('V',	6300675478116530,	5,	22,	109,	'A'),
('AMEX',	7891237854309070,	9,	24,	3144,	'A'),
('AMEX',	7891986543890920,	11,	23,	5423,	'A');

--SELECT * from FA23.PAYMENT;

--CUSTOMER
INSERT INTO FA23.CUSTOMER (FirstName, LastName, StreetNum, StreetName, City, State, Zip, Gender, Phone, Email, PaymentID, JoinDate)
VALUES
('Rachel',	'Luew',	12,	'Azalea Ct',	'Miller Place',	'NY',	'11764',	'F',	'7186785643',	'rachelluew@yahoo.com',	1,	'2/23/2021'),
('Mark',	'Forde',	6,	'Green Ave',	'Hempstead',	'NY',	'11550',	'M',	'5163228907',	'fordem@gmail.com',	10,	'5/1/2021'),
('Lisa',	'Biosl',	87,	'Reservoir Rd',	'Northport',	'NY',	'11768',	'F',	'6315769876',	'lisabiosl@solarone.com',	4,	'6/2/2021'),
('Nelly',	'Nayman',	17,	'Marks Pl',	'Smithtown',	'NY',	'11766',	'F',	'6315897654',	'nellynayman@hotmail.com',	5,	'4/20/2022'),
('Anthony',	'Siroka',	101,	'Canal St',	'Melville',	'NY',	'11543',	'M',	'3475089644',	'anthonysiroka@gmail.com',	9,	'7/3/2022'),
('Scott',	'Williams',	1083,	'Jerusalem Ave',	'Uniondale',	'NY',	'11553',	'M',	'9173045123',	'swilliams@sbcglobal.net',	8,	'10/5/2022'),
('Stella',	'Ravve',	13,	'Linden Blvd',	'Queens',	'NY',	'11322',	'F',	'7185334256',	'stellravve@yahoo.com',	2,	'12/4/2022'),
('Monik',	'Gale',	54,	'Jericho Tpke',	'Dix Hills',	'NY',	'11689',	'M',	'6312387642',	'mgale@mac.com',	7,	'4/20/2023'),
('Rose',	'Madray',	270,	'Pulaski Rd',	'Greenlawn',	'NY',	'11544',	'F',	'5169076547',	'rosemadray@yahoo.com',	6,	'7/11/2023'),
('Christie',	'Caesar',	34,	'Wall St',	'Huntington',	'NY',	'11799',	'F',	'9176786622',	'ccaesar@gmail.com',	3,	'8/2/2023');

--SELECT * from FA23.CUSTOMER

---EMPLOYEE
INSERT INTO FA23.EMPLOYEE (LocationID, FirstName, LastName, Phone, Email, Gender, Title, Status, HireDate)
VALUES
(1,	'Allan',	'Sherwood',	'7186785643',	'allan.sherwood@yahoo.com',	'M',	'Manager',	'A',	'2/23/2021'),
(1,	'Barry',	'Zimmer',	'5163228907',	'barryz@gmail.com',	'M',	'Assistant',	'A',	'5/1/2021'),
(2,	'Christine',	'Brown',	'6315769876',	'christineb@solarone.com',	'F',	'Instructor',	'A',	'6/2/2021'),
(3,	'David',	'Goldstein',	'6315897654',	'david.goldstein@hotmail.com',	'M',	'Assistant',	'A',	'4/20/2022'),
(3,	'Erin',	'Valentino',	'3475089644',	'erinv@gmail.com',	'F',	'Instructor',	'A',	'7/3/2022'),
(1,	'Frank',	'Wilson',	'9173045123',	'frankwilson@sbcglobal.net',	'M',	'Front Desk',	'A',	'10/5/2022'),
(3,	'Gary',	'Hernandez',	'7185334256',	'Gary_hernandez@yahoo.com',	'M',	'Instructor',	'A',	'12/4/2022'),
(2,	'Heather',	'Esway',	'6312387642',	'heatheresway@mac.com',	'F',	'Instructor',	'A',	'4/20/2023'),
(2,	'Josephine',	'Darkjy',	'5169076547',	'josephine_darakjy@yahoo.com',	'F',	'Manager',	'A',	'7/11/2023'),
(1,	'Mitsue',	'Toller',	'9176786622',	'mtoller@gmail.com',	'M',	'Instructor',	'A',	'8/2/2023'),
(1,	'George',	'Mason',	'6315554567', NULL,	'M',	'Janitor',	'A',	'2/23/2021'),
(3,	'Stacy',	'Lerman',	'5164563455',NULL,		'F',	'Instructor',	'A',	'5/1/2021'),
(2,	'Denise',	'Ponce',	'9173422388',NULL,		'F',	'Front Desk',	'A',	'6/2/2021'),
(3,	'Lauren',	'Baron',	'3476788766',NULL,		'F',	'Front Desk',	'A',	'4/20/2022'),
(3,	'Phil',	'Sottile',	'6312345567',NULL,		'M',	'Instructor',	'A',	'7/3/2022'),
(3,	'Lawrence',	'Raine',	'6312358900',NULL,		'M',	'Janitor',	'A',	'10/5/2022'),
(1,	'Margot',	'Reece',	'9178903214',NULL,		'F',	'Instructor',	'A',	'12/4/2022'),
(2,	'Alta',	'Wint',	'5165457777',NULL,		'F',	'Janitor',	'A',	'4/20/2023'),
(3,	'Michael',	'VanTull',	'5163457899',NULL,		'M',	'Manager',	'A',	'7/11/2023'),
(3,	'Wayne',	'Harris',	'5165677899',NULL,	'M',	'Instructor',	'A',	'8/2/2023');

--SELECT * from FA23.EMPLOYEE;

--INSTRUCTOR
INSERT INTO FA23.INSTRUCTOR (EmployeeID)
VALUES
(3),
(7),
(8),
(10),
(15),
(17),
(18),
(20),
(5),
(12);

--SELECT * from FA23.INSTRUCTOR

--INSTRUCTOR_CLASS
INSERT INTO FA23.INSTRUCTOR_CLASS (InstructorID, ClassID, LocationID, ActivityDate, StartTime)
VALUES
(10,1,	2,	'9/1/2023',	'8:15'),
(5,	1,	2,	'9/1/2023',	'9:30'),
(2,	1,	3,	'9/1/2023',	'16:15'),
(8,	2,	1,	'9/4/2023',	'8:15'),
(3,	2,	2,	'9/4/2023',	'9:30'),
(7,	2,	3,	'9/4/2023',	'16:15'),
(6,	3,	1,	'9/16/2023',	'10:00'),
(1,	3,	1,	'9/16/2023',	'16:00'),
(6,	4,	2,	'9/17/2023',	'8:15'),
(7,	4,	3,	'9/17/2023',	'9:30'),
(1,	4,	1,	'9/17/2023',	'16:15'),
(2,	5,	2,	'9/18/2023',	'8:30'),
(3,	5,	1,	'9/18/2023',	'11:30'),
(10,	6,	3,	'10/5/2023',	'8:15'),
(5,	6,	2,	'10/5/2023',	'9:30'),
(2,	6,	2,	'10/5/2023',	'16:15'),
(4,	7,	3,	'10/10/2023',	'11:30'),
(9,	7,	1,	'10/10/2023',	'17:00'),
(2,	8,	3,	'10/12/2023',	'8:30'),
(5,	8,	1,	'10/12/2023',	'11:30'),
(10,	9,	1,	'11/1/2023',	'8:15'), 
(5,	9,	2,	'11/1/2023',	'9:30'),
(2,	9,	3,	'11/1/2023',	'16:15'),
(4,	10,	1,	'11/10/2023',	'19:00'),
(8,	11,	1,	'11/12/2023',	'11:30'),
(6,	11,	1,	'11/12/2023',	'17:00');


--SELECT * from FA23.INSTRUCTOR_CLASS


--CUSTOMER_CLASS
INSERT INTO FA23.CUSTOMER_CLASS (CustomerID, InstructorClassID)
VALUES
(3,	1),
(5,	3),
(3,	3),
(2,	8),
(8,	5),
(9,	3),
(1,	3),
(5,	2),
(4,	7),
(8,	2),
(6,	5),
(7,	3),
(1,	4),
(6,	9),
(1,	5),
(7,	5),
(4,	3),
(6,	10),
(8,	10),
(9,	7),
(7,	9),
(10,	1),
(4,	9);

--SELECT * from FA23.CUSTOMER_CLASS 


--RESERVATION
INSERT INTO FA23.RESERVATION (CustomerID, InstructorClassID, EmployeeID, Status, ReservationDate)
VALUES
(1,	1,	2,	'p','2023-02-01'),
(2,	5,	4,	'p','2023-02-02'),
(1,	9,	13,	'p','2023-01-15'),
(3,	26,	14,	'p','2023-02-04'),
(1,	5,	2,	'c','2022-01-15'),
(4,	26,	4,	'c','2022-01-16'),
(6,	10,	13,	'c','2022-01-17'),
(5,	10,	14,	'c','2022-01-18'),
(9,	23,	2,	'c','2022-02-04'),
(2,	1,	4,	'c','2022-02-05'),
(8,	15,	13,	'c','2022-02-06'),
(10,16,	14,	'c','2022-02-07'),
(7,	5,	2,	'c','2022-03-15'),
(6,	14,	4,	'c','2022-03-15'),
(3,	15,	13,	'c','2022-03-15'),
(10,3,	14,	'c','2022-04-30'),
(5,	7,	2,	'p','2023-09-08'),
(6,	9,	4,	'p','2023-09-09'),
(8,	12,	13,	'p','2023-09-10'),
(9,	11,	14,	'p','2023-09-11'),
(10,13,	2,	'p','2023-09-12'),
(5,	22,	4,	'c','2022-10-05'),
(9,	4,	13,	'c','2022-11-01'),
(3,	8,	14,	'c','2022-12-01'),
(7,	25,	3,	'c','2022-12-02');

--SELECT * from FA23.RESERVATION

--RESHISTORY
INSERT INTO FA23.RES_HISTORY (ReservationID, CustomerID, ReservationDate)
VALUES
(5,	1,	'2022-01-15'),
(6,	4,	'2022-01-16'),
(7,	6,	'2022-01-17'),
(8,	5,	'2022-01-18'),
(9,	9,	'2022-02-04'),
(10,	2,	'2022-02-05'),
(11,	8,	'2022-02-06'),
(12,	10,	'2022-02-07'),
(13,	7,	'2022-03-15'),
(14,	6,	'2022-03-15'),
(15,	3,	'2022-03-15'),
(16,	10,	'2022-04-30'),
(22,	5,	'2022-10-05'),
(23,	9,	'2022-11-01'),
(24,	3,	'2022-12-01'),
(25,	7,	'2022-12-02');

--SELECT * from FA23.RES_HISTORY
