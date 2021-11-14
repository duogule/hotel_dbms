-- Calculate total cost per in-stock item as a new column

CREATE FUNCTION cost(@item_id int)
RETURNS MONEY
AS
    BEGIN 
        DECLARE @totalcost MONEY = 
        (SELECT item_price * stock
	    FROM Item 
	    WHERE item_id = @item_id)
	RETURN @totalcost;
END;


-- Execute the function for table 'Item'

ALTER TABLE Item ADD TotalCost AS (dbo.cost(item_id));


-- Check the derived column

SELECT * FROM Item;