CREATE TABLE booking (
  booking_id UUID PRIMARY KEY,
  property_id UUID NOT NULL REFERENCES property(property_id),
  user_id UUID NOT NULL REFERENCES users(user_id),
  start_date DATE NOT NULL,
  end_date DATE NOT NULL,
  total_price DECIMAL NOT NULL,
  status TEXT NOT NULL CHECK (status IN ('pending', 'confirmed', 'canceled')),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) PARTITION BY RANGE (start_date);

-- Bookings for current year
CREATE TABLE booking_2025 PARTITION OF bookings
  FOR VALUES FROM ('2025-01-01') TO ('2026-01-01');
