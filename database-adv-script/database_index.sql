-- Indexes for User table
CREATE INDEX idx_users_email ON users(email);
CREATE INDEX idx_users_created_at ON users(created_at);

-- Indexes for Booking table
CREATE INDEX idx_booking_user_id ON bookings(user_id);
CREATE INDEX idx_booking_property_id ON bookings(property_id);
CREATE INDEX idx_booking_start_date ON bookings(start_date);
CREATE INDEX idx_booking_end_date ON bookings(end_date);

-- Indexes for Property table
CREATE INDEX idx_property_host_id ON properties(host_id);
CREATE INDEX idx_property_location ON properties(location);
CREATE INDEX idx_property_price ON properties(price);

-- Indexes for Review table
CREATE INDEX idx_review_property_id ON reviews(property_id);
CREATE INDEX idx_review_user_id ON reviews(user_id);
CREATE INDEX idx_review_rating ON reviews(rating);
