-- Write a query using an INNER JOIN to retrieve all bookings and the respective users who made those bookings.


SELECT * FROM bookings
INNER JOIN users ON bookings.user_id = users.id;