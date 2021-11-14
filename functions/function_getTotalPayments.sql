-- Function for calculating total payment amount by CustomerID

CREATE FUNCTION getTotalPayments(@cus_id INT)
RETURNS MONEY
AS
	BEGIN
        DECLARE @total MONEY = 
	        (SELECT SUM(p.payment_amount)
			FROM dbo.Payment p
			INNER JOIN dbo.Reservation r
			ON p.payment_id = r.payment_id 
			AND r.customer_id = @cus_id)
		RETURN @total;
	END;

SELECT dbo.getTotalPayments(1);