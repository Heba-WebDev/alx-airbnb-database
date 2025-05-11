INSERT INTO users (user_id, first_name, last_name, email, password, phone_number, role, created_at)
VALUES 
  ('1a2b3c4d-0000-1111-2222-123456789abc', 'John', 'Doe', 'john@test.com', 'hashed_password', NULL, 'guest', '2025-05-11 12:00:00'),
  ('2b3c4d5e-0000-1111-2222-123456789def', 'Alice', 'Smith', 'alice@test.com', 'hashed_password', '123-456-7890', 'host', '2025-05-11 12:30:00'),
  ('3c4d5e6f-0000-1111-2222-123456789ghi', 'Bob', 'Brown', 'bob@test.com', 'hashed_password', NULL, 'admin', '2025-05-11 13:00:00');

INSERT INTO properties (property_id, host_id, name, description, location, pricepernight, created_at, updated_at)
VALUES 
  ('prop-001', '2b3c4d5e-0000-1111-2222-123456789def', 'Cozy Apartment', 'A cozy 2-bedroom apartment.', 'New York', 120.00, NOW(), NOW()),
  ('prop-002', '2b3c4d5e-0000-1111-2222-123456789def', 'Beach House', 'A beautiful beach house with ocean views.', 'Los Angeles', 250.00, NOW(), NOW());

INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status, created_at)
VALUES 
  ('book-001', 'prop-001', '1a2b3c4d-0000-1111-2222-123456789abc', '2025-06-01', '2025-06-05', 480.00, 'confirmed', NOW()),
  ('book-002', 'prop-002', '1a2b3c4d-0000-1111-2222-123456789abc', '2025-07-10', '2025-07-12', 500.00, 'pending', NOW());

INSERT INTO payments (payment_id, booking_id, amount, payment_date, payment_method)
VALUES 
  ('pay-001', 'book-001', 480.00, NOW(), 'credit_card');

INSERT INTO reviews (review_id, property_id, user_id, rating, comment, created_at)
VALUES 
  ('rev-001', 'prop-001', '1a2b3c4d-0000-1111-2222-123456789abc', 5, 'Fantastic place, would visit again!', NOW());

INSERT INTO messages (message_id, sender_id, recipient_id, message_body, sent_at)
VALUES 
  ('msg-001', '1a2b3c4d-0000-1111-2222-123456789abc', '2b3c4d5e-0000-1111-2222-123456789def', 'Is the apartment available in June?', NOW());
