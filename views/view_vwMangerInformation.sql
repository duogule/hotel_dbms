-- Create a view to show information of managers

CREATE VIEW vwManagerInformation
    AS
    SELECT e.employee_id,e.employee_firstname,e.employee_lastname,e.monthly_wage,d.department_name
    FROM dbo.employee e
    JOIN dbo.department d
    ON e.department_id = d.department_id
 
SELECT * FROM  vwManagerInformation
 