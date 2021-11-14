-- Create a view to show information of all booked rooms (including room_id, branch_id etc) in Jan 2020

CREATE VIEW vwBookedRoom
AS
	SELECT r.room_id, b.branch_id, s.availability_date 
	FROM dbo.Room r
	INNER JOIN dbo.Branch b
	ON r.branch_id = b.branch_id 
	INNER JOIN dbo.AvailabilityState s
	ON r.room_id = s.room_id
	AND s.availability = 0
	AND s.availability_date >= '2020-01-01' 
	AND s.availability_date <= '2020-01-31';

SELECT * FROM vwBookedRoom;