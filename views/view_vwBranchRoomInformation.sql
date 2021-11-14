-- Create a view to show information of all rooms for a specific hotel location

CREATE VIEW vwBranchRoomInformation
    AS
    SELECT r.branch_id, branch_name, b.phone_number, r.room_no, roomtype_name, WIFI, AC, max_capacity
    FROM RoomType rt 
    join Room r on r.roomtype_id = rt.roomtype_id 
    join Branch b on r.branch_id = b.branch_id 
 
SELECT * FROM   vwBranchRoomInformation