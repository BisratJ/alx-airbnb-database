-- INDEX CREATION
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_created_at ON users(created_at);
CREATE INDEX idx_booking_user_id ON bookings(user_id);
CREATE INDEX idx_booking_property_id ON bookings(property_id);
CREATE INDEX idx_booking_start_date ON bookings(start_date);
CREATE INDEX idx_booking_end_date ON bookings(end_date);
CREATE INDEX idx_property_host_id ON properties(host_id);
CREATE INDEX idx_property_location ON properties(location);
CREATE INDEX idx_property_price ON properties(price);

-- PERFORMANCE TEST QUERIES (for EXPLAIN ANALYZE)
-- 1. Email lookup
SELECT * FROM users WHERE email = 'test@example.com';

-- 2. Date range bookings
SELECT * FROM bookings 
WHERE start_date BETWEEN '2025-01-01' AND '2025-01-31';

-- 3. Host properties
SELECT * FROM properties WHERE host_id = 456;
