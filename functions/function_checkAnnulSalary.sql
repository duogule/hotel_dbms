-- Function for calculating employee's annual salary 

CREATE FUNCTION checkannulsalary(@employee_id int)
RETURNS MONEY
AS 
   BEGIN 
	   DECLARE @Annualsalary MONEY = 
	       (SELECT monthly_wage * 12
	       FROM Employee 
	       WHERE employee_id = @employee_id)
	   SET @Annualsalary = ISNULL(@Annualsalary,0);
	   RETURN @Annualsalary;
END;
 
ALTER TABLE Employee ADD Annualsalary AS (dbo.checkannulsalary(employee_id));


SELECT * FROM Employee;