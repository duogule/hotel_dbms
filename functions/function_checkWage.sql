-- Function for checking whether a manager gets a reasonable wage
-- The function will return the wage number if the manager has wage not beyond the pre-defined limit, otherwise raise errors.
 
CREATE FUNCTION CheckWage(@employee_id int)
RETURNS smallint
AS 
BEGIN
	DECLARE @Count smallint = 0
	SELECT @Count = COUNT(employee_id)
	    FROM Employee 
	    WHERE employee_id = @employee_id AND monthly_wage < 5000 ;
	RETURN @Count
END;
 
ALTER TABLE Employee ADD CONSTRAINT CheckLowerWage CHECK(dbo.CheckWage(employee_id)= 0);
 

-- Add dummy records to test the function

INSERT into dbo.Employee(employee_id,department_id,hire_date,monthly_wage,employee_firstname,employee_lastname,employee_phone,employee_email)
    VALUES(0001,96100,'2011-07-11',9800,'David','Chicken',86910,'chickendavid@gmail.com')
INSERT into dbo.Employee(employee_id,department_id,hire_date,monthly_wage,employee_firstname,employee_lastname,employee_phone,employee_email)
    VALUES (1001,96110,'2015-08-09',4300,'Amanda','Lee',86911,'amanda345@gmail.com')
 
 
 