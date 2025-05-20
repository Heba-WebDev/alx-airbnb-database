-- Write a query to find all properties where the average rating is greater than 4.0 using a subquery.

SELECT * FROM properties
WHERE property_id IN (
    SELECT property_id FROM review
    GROUP BY property_id
    HAVING round(AVG(rating),1) > 4.0
)

-- Write a correlated subquery to find users who have made more than 3 bookings.

SELECT count(*) FROM users u
WHERE (
SELECT count(*)
FROM booking b
WHERE b.user_id = u.user_id
) > 3;