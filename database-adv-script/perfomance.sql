-- Joins all related tables, regardless of whether all fields are needed

SELECT * FROM bookings
JOIN users ON bookings.user_id = users.user_id
JOIN property ON bookings.property_id = property.property_id
JOIN payments ON bookings.booking_id = payments.booking_id;

EXPLAIN SELECT * FROM bookings;

SELECT user_id, property_id FROM bookings;

-- Analyze the query

EXPLAIN ANALYZE
SELECT * FROM bookings
JOIN users ON bookings.user_id = users.user_id
JOIN property ON bookings.property_id = property.property_id
JOIN payments ON bookings.booking_id = payments.booking_id;

EXPLAIN SELECT * FROM bookings;

SELECT user_id, property_id FROM bookings;

-- Optimized Query

-- Get only the fields you actually need
SELECT
    b.booking_id,
    u.email AS user_email,
    p.name AS property_name,
    p.location AS property_location,
    pay.status AS payment_status,
    pay.amount AS payment_amount
FROM
    bookings b
JOIN
    users u ON b.user_id = u.user_id
JOIN
    property p ON b.property_id = p.property_id
LEFT JOIN
    payments pay ON b.booking_id = pay.booking_id;

