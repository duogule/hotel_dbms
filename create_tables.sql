-- 1. Brance

CREATE TABLE dbo.Branch

(	branch_id INT NOT NULL PRIMARY KEY,
	street_address VARCHAR(50) NOT NULL,
	city VARCHAR(50) NOT NULL,
	state VARCHAR(50) NOT NULL,
	zipcode INT NOT NULL,
	phone_number INT NOT NULL,
	branch_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL
);


-- 2. RoomType

CREATE TABLE dbo.RoomType
	(
	roomtype_id int NOT NULL PRIMARY KEY,
	roomtype_name varchar(50) NOT NULL,
	WIFI bit NOT NULL,
	AC bit NOT NULL,
	max_capacity int NOT NULL
	);


-- 3. Room 

CREATE TABLE dbo.Room
	(
	room_id int NOT NULL PRIMARY KEY,
	room_no int NOT NULL,
	branch_id int NOT NULL
		REFERENCES Branch(branch_id),
	roomtype_id int NOT NULL
		REFERENCES RoomType(roomtype_id),
	room_phone int NOT NULL
	);


-- 4. Item

CREATE TABLE dbo.Item
	(
	item_id int NOT NULL PRIMARY KEY,
	item_name varchar(50) NOT NULL,
	item_brand varchar(50) NOT NULL,
	item_price money NOT NULL,
	stock int NOT NULL
	);


-- 5. Distribution

CREATE TABLE dbo.Distribution
	(
	distribution_id int identity NOT NULL PRIMARY KEY,
	room_id int NOT NULL
	     references Room(room_id),
	item_id int NOT NULL
	     references Item(item_id),
	distribution_date date NOT NULL,
	item_number int NOT NULL
	);


-- 6. CleanState

CREATE TABLE dbo.CleanState
	(
	clean_state_id int identity NOT NULL PRIMARY KEY,
	room_id int NOT NULL
	     references Room(room_id),
	time date NOT NULL,
	ifClean bit NOT NULL
	);


-- 7. Customer

CREATE TABLE dbo.Customer
	(
	customer_id int NOT NULL PRIMARY KEY,
	customer_firstname varchar(50) NOT NULL,
	customer_lastname varchar(50)  NOT NULL,
	customer_phone int NOT NULL,
	customer_email varchar(50),
	);


-- 8. AvailabilityState 

CREATE TABLE dbo.AvailabilityState
(	availability_state_id INT NOT NULL PRIMARY KEY,
	room_id INT NOT NULL REFERENCES Room(room_id),
	availability_date DATE NOT NULL,    
        	availability BIT NOT NULL
);


-- 9. Payment 

CREATE TABLE dbo.Payment
(	payment_id INT NOT NULL PRIMARY KEY,
	payment_method VARCHAR(50) NOT NULL,
	payment_amount MONEY NOT NULL
);


-- 10. Reservation

CREATE TABLE dbo.Reservation
	(
	reservation_id int NOT NULL PRIMARY KEY,
	room_id int NOT NULL
		REFERENCES dbo.Room(room_id),
	check_in date NOT NULL,
	check_out date NOT NULL,
	customer_id int NOT NULL
		REFERENCES dbo.Customer(customer_id),
	payment_id int NOT NULL
		REFERENCES dbo.Payment(payment_id),
	ifSuccessful bit NOT NULL
	);

-- 11. Department

CREATE TABLE dbo.Department
     (
     department_id int NOT NULL PRIMARY KEY,
     department_name varchar(50) NOT NULL,
     branch_id int NOT NULL
          REFERENCES Branch(branch_id),
     department_phone int NOT NULL,
     department_email varchar(50) NOT NULL,
     responsibility varchar(50) NOT NULL
     );


-- 12. Employee

CREATE TABLE dbo.Employee
      (
      employee_id int NOT NULL PRIMARY KEY,
      department_id int NOT NULL
           references Department(department_id),
      hire_date date NOT NULL,
      monthly_wage money NOT NULL,
      employee_firstname varchar(50) NOT NULL,
      employee_lastname varchar(50) NOT NULL,
      employee_phone int NOT NULL,
      employee_email varchar(50) NOT NULL
      );


-- 13. Manager_employee

CREATE TABLE dbo.Manager_employee
      (
      employee_id int NOT NULL
          references Employee(employee_id),
      department_id int NOT NULL
          references Department(department_id),
          CONSTRAINT PKManagerEmployee PRIMARY KEY CLUSTERED
                (employee_id, department_id)
      );
