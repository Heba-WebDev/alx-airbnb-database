-- Write a query to find the total number of bookings made by each user, using the COUNT function and GROUP BY clause.

SELECT user_id, COUNT(*) AS total_bookings
FROM bookings
GROUP BY bookings.user_idl

-- Use a window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.

SELECT
    b.property_id,
    b.total_bookings
    RANK() OVER(ORDER BY b.total_bookings DESC) AS rank,
    ROW_NUMBER() OVER(ORDER BY b.total_bookings DESC) AS row_number
FROM (
    SELECT
        property_id, COUNT(*) AS total_bookings
    FROM
        bookings
    GROUP BY
        property_id
) AS b;

-- With a CTE

WITH PropertyBookingCounts AS (
    SELECT
        property_id,
        COUNT(*) AS total_bookings
    FROM
        bookings
    GROUP BY
        property_id
)
SELECT
    property_id,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number
FROM
    PropertyBookingCounts;
