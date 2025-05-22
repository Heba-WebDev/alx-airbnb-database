
CREATE INDEX idx_email ON users(email);

CREATE INDEX idx_property_location ON property(location);

CREATE INDEX idx_user_id ON bookings(user_id);

EXPLAIN SELECT user_id FROM bookings;

ANALYZE SELECT location FROM property;
