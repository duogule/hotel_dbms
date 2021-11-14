
INSERT INTO dbo.Branch 
           VALUES(1, '222 Oak St', 'Palo Alto', 'CA', 95043, 50782, 'Oak', 'oak@boba.hotel.com'),
                 (2, '1921 Maple St', 'Mountain View', 'CA', 94043, 52564, 'Maple', 'maple@boba.hotel.com'),
                 (3, '677 Pine St', 'Sunnyvale', 'CA', 90202, 40472, 'Pine', 'pine@boba.hotel.com'),
                 (4, '455 California St', 'Mountain View', 'CA', 90233, 65019, 'Cali', 'cali@boba.hotel.com'),
                 (5, '330 Lake St', 'Bellevue', 'WA', 98001, 70828, 'Lake', 'lake@boba.hotel.com'),
                 (6, '90 Skyline Blvd', 'Los Altos', 'AK', 99503, 64221, 'Skyline', 'skyline@boba.hotel.com'),
                 (7, '800 Park St', 'Dallas', 'TX', 75014, 64685, 'Park', 'park@boba.hotel.com'),
                 (8, '909 Terri Lynn', 'Salt Lake', 'UT', 84121, 64657, 'Terri', 'terri@boba.hotel.com'),
                 (9, '365 Stanford Ave', 'Menlo', 'OH', 43003, 62547, 'Stanford', 'stanford@boba.hotel.com'),
                 (10,'5050 Fifth Ave', 'New York', 'NY', 10002, 54503, 'Fifth', 'fifth@boba.hotel.com');

INSERT into RoomType (roomtype_id,roomtype_name, WIFI, AC, max_capacity)
           values(1001,'Budget Single Room',1,1,1),
                 (1002,'Standard Queen Room without View',1,1,2),
                 (1003,'Deluxe Room 1 King',1,1,3),
                 (1004,'Deluxe Room 2 Double',1,1,3),
                 (1005,'Deluxe Garden View Room 2 Double',1,1,3),
                 (1006,'Deluxe Garden View Room 1 King',1,1, 3),
                 (1007,'Deluxe Suite',1,1, 3),
                 (1008,'Executive Level Room 1 King',1,1, 3),
                 (1009,'Executive Level Room 2 Double',1,1, 3),
                 (1010,'Executive Level Suite',1,1, 3);
              
INSERT dbo.Room	
	VALUES
	(0000000000001,	1001,	1,	1001,	45452),
	(0000000000002,	1002,	1,	1001,	12647),
	(0000000000003,	1003,	1,	1001,	56789),
	(0000000000004,	1004,	1,	1001,	24745),
	(0000000000005,	2001,	1,	1002,	43785),
	(0000000000006,	2002,	1,	1002,	45785),
	(0000000000007,	2003,	1,	1002,	45885),
	(0000000000008,	2004,	1,	1007,	45785),
	(0000000000009,	3001,	1,	1007,	55788),
	(0000000000010,	3002,	1,	1009,	45787);

INSERT into Item(item_id,item_name, item_brand , item_price, stock)
           values(105001,'toilet paper','Kirkland',0.67, 586),
                 (105002,'shampoo','Head & Shouldersd',14.99,287),
                 (105003,'bodywash','Dove',15.99, 312),
                 (105004,'hair dryer','Revlon',21.99, 5),
                 (105005,'trash can','AmazonBasics',12.98, 41),
                 (105006,'trash bags','Hefty',14.59, 1432),
                 (105007,'lamp','Sunllipe',39.99, 3),
                 (105008,'electric water kettle','Bodum Bistro',19.99, 12),
                 (105009,'bath towel','Cozy Homery',14.97, 238),
                 (105010,'drinking cup','US Acrylic',2.5, 189);
                
INSERT into Distribution (room_id, item_id, distribution_date, item_number)
           values(0000000000002, 105001, '2020-03-18',2),
                 (0000000000002, 105006, '2020-03-21',5),
                 (0000000000005, 105001,'2020-03-24', 1),
                 (0000000000005, 105002,'2020-03-24', 1),
                 (0000000000005, 105003,'2020-03-25', 1),
                 (0000000000007, 105001,'2020-03-23', 3),
                 (0000000000007, 105002,'2020-03-25', 1),
                 (00000000000010, 105001,'2020-03-22', 2),
                 (00000000000010, 105003,'2020-03-24', 1),
                 (00000000000010, 105006,'2020-03-24', 1);
                
INSERT into CleanState (room_id, time, ifClean)
           values(0000000000001, '2020-03-20',1),
                 (0000000000001, '2020-03-21',0),
                 (0000000000002, '2020-03-20',0),
                 (0000000000002, '2020-03-22',1),
                 (0000000000002, '2020-03-24',1),
                 (0000000000005, '2020-03-21',1),
                 (0000000000005, '2020-03-23',0),
                 (0000000000006, '2020-03-24',1),
                 (0000000000008, '2020-03-25',0),
                 (0000000000009, '2020-03-26',1);

INSERT dbo.Customer
	VALUES
	(1, 'Alice', 'Qi', 77322, 'hafashu@gmail.com'),
	(2,	'Bob',	'Shah',	90844,	'afdfsda@gmail.com'),
	(3,	'Carol', 'Li',	79877,	'dasfsadf@yahoo.com'),
	(4,	'David',	'Smith',	34353,	'asdsda@yahoo.com'),
	(5,	'Ellen',	'Wang', 53422,	'fasfda@gmail.com'),
	(6,	'Felix',	'Wang', 53782,	'fa32da@gmail.com'),
	(7,	'Garry',	'Hopper',	41255,	'nudhfwer@gmail.com'),
	(8,	'Helen',	'John',	33555,	'aafasf@gmail.com'),
	(9,	'Irine',	'Li',	68224,	'ubucuerwer@gmail.com'),
	(10,	'Joanne',	'He',	22768,	'vsdfadrfawfq@gmail.com');


INSERT INTO dbo.AvailabilityState VALUES 
(1,1,'2020-01-01', 0),
(2,2,'2020-01-02', 0),
(3,3,'2020-01-03', 0),
(4,4,'2020-01-04', 0),
(5,5,'2020-01-05', 0),
(6,7,'2020-01-06', 0),
(7,8,'2020-01-07', 0),
(8,9,'2020-01-08', 0),
(9,10,'2020-01-09', 0),
(10,6, '2020-01-10', 0);

INSERT INTO dbo.Payment VALUES
	(1, 'PayPal', 677),
	(2, 'Visa', 2134),
	(3, 'Mastercard', 345),
	(4, 'Discover', 567),
	(5, 'UnionPay',	261),
	(6, 'JCB', 577),
	(7, 'ApplePay', 367),
	(8, 'Alipay', 743),
	(9, 'GooglePay', 366),
	(10, 'American Express', 345);


INSERT dbo.Reservation
	VALUES

	(001,	0000000000001,	'2020-01-01',	'2020-01-02',	1,	1,	1),
	(002,	0000000000002,	'2020-01-02',	'2020-01-03',	2,	2,	1),
	(003,	0000000000003,	'2020-01-03',	'2020-01-04',	3,	3,	1),
	(004,	0000000000004,	'2020-01-04',	'2020-01-05',	4,	4,	1),
	(005,	0000000000005,	'2020-01-05',	'2020-01-06',	5,	5,	0),
	(006,	0000000000007,	'2020-01-06',	'2020-01-07',	6,	6,	1),
	(007,	0000000000008,	'2020-01-07',	'2020-01-08',	7,	7,	1),
	(008,	0000000000009,	'2020-01-08',	'2020-01-09',	8,	8,	0),
	(009,	0000000000010,	'2020-01-09',	'2020-01-10',	9,	9,	1),
	(010,	0000000000006,	'2020-01-10',	'2020-01-11',	10, 10,	1);


INSERT into dbo.Department(department_id,department_name,branch_id,department_phone,department_email,responsibility)
    VALUES(96100,'Executives',1,33800,'executives.boba.com','decision makers within the business'),
		  (96110,'Front Desk Services',1,33810,'frontdeskservices.boba.com','constantly contact with guests'),
		  (96120,'Housekeeping',1,33820,'housekeeping.boba.com','keep guest rooms clean and tidy'),
		  (96130,'Maintenance',1,33830,'maintenance.boba.com','repair and fix items'),
		  (96140,'Accounting',1,33840,'accounting.boba.com','track expenses and revenue'),
		  (96150,'Marketing & Sales',1,33850,'marketing_sales.boba.com','spread the brand message'),
		  (96160,'Kitchen Staff',1,33860,'kitchen_staff.boba.com','meet guest��s dining needs'),
		  (96170,'Security',1,33870,'security.boba.com','ensure employee and guests safe'),
		  (96180,'Purchasing',1,33880,'purchasing.boba.com','buy necessary things for hotel'),
		  (96190,'Afterservice',1,33890,'afterservice.boba.com','deal with guest dissatisfaction');


INSERT into dbo.Employee(employee_id,department_id,hire_date,monthly_wage,employee_firstname,employee_lastname,employee_phone,employee_email)
     VALUES(0001,96100,'2011-07-11',9800,'David','Chicken',86910,'chickendavid@gmail.com'),
		   (1001,96110,'2015-08-09',4300,'Amanda','Lee',86911,'amanda345@gmail.com'),
		   (2001,96120,'2016-01-12',5200,'Steven','Niu',86912,'niuoh@gmail.com'),
		   (3001,96130,'2013-12-22',8855,'Linda','Von',86913,'Lindaaaa@gmail.com'),
		   (4001,96140,'2018-11-01',4500,'Selina','Klevi',86914,'Selinalove@gmail.com'),
		   (5001,96150,'2014-02-03',8600,'Vera','Wong',86915,'verawong@gmail.com'),
		   (6001,96160,'2018-11-24',5600,'Gia','Pan',86916,'giapan@gamil.com'),
		   (7001,96170,'2017-03-19',4900,'Leon','Qiu',86917,'leon099@gmail.com'),
		   (8001,96180,'2018-09-01',6500,'Rachel','Dela',86918,'rachel89@gmail.com'),
		   (9001,96190,'2016-07-12',5600,'Michel','Deng',86919,'micheldeng@gmail.com');


INSERT into dbo.Manager_employee(employee_id,department_id)
     VALUES(0001,96100),
           (1001,96110),
           (2001,96120),
           (3001,96130),
           (4001,96140),
           (5001,96150),
           (6001,96160),
           (7001,96170),
           (8001,96180),
           (9001,96190);


INSERT INTO dbo.Payment VALUES
	(11, 'PayPal', 677),
	(12, 'Visa', 2134),
	(13, 'Mastercard', 345),
	(14, 'Discover', 567),
	(15, 'UnionPay',	261),
	(16, 'JCB', 577),
	(17, 'ApplePay', 367),
	(18, 'Alipay', 743),
	(19, 'GooglePay', 366),
	(20, 'American Express', 345),
	(21, 'PayPal', 677),
	(22, 'Visa', 2134),
	(23, 'Mastercard', 345),
	(24, 'Discover', 567),
	(25, 'UnionPay',	261),
	(26, 'JCB', 577),
	(27, 'ApplePay', 367),
	(28, 'Alipay', 743),
	(29, 'GooglePay', 366),
	(30, 'American Express', 345),
	(31, 'PayPal', 677),
	(32, 'Visa', 2134),
	(33, 'Mastercard', 345),
	(34, 'Discover', 567),
	(35, 'UnionPay',	261),
	(36, 'JCB', 577),
	(37, 'ApplePay', 367),
	(38, 'Alipay', 743),
	(39, 'GooglePay', 366),
	(40, 'American Express', 345),
	(41, 'PayPal', 677),
	(42, 'Visa', 2134),
	(43, 'Mastercard', 345),
	(44, 'Discover', 567),
	(45, 'UnionPay',	261),
	(46, 'JCB', 577),
	(47, 'ApplePay', 367),
	(48, 'Alipay', 743),
	(49, 'GooglePay', 366),
	(50, 'American Express', 345),
	(51, 'PayPal', 677),
	(52, 'Visa', 2134),
	(53, 'Mastercard', 345),
	(54, 'Discover', 567),
	(55, 'UnionPay',	261),
	(56, 'JCB', 577),
	(57, 'ApplePay', 367),
	(58, 'Alipay', 743),
	(59, 'GooglePay', 366),
	(60, 'American Express', 345),
	(61, 'PayPal', 677),
	(62, 'Visa', 2134);
	
INSERT into dbo.Customer
	VALUES
	(12,'Penny','Williams',58349,'dinfe2@gmail.com',''),
	(13,'John','Rodriguez',29410,'foijsf@gmail.com',''),
	(14,'Peter','Davis',32846,'djonead24@gmail.com',''),
	(15,'Ross','Miller',66728,'fjoenga83@gmail.com','');



