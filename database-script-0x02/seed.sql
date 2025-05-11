INSERT INTO Users (user_id, first_name, last_name, email, password_hash, role) VALUES
('uuid-1', 'Alice', 'Smith', 'alice@example.com', 'hash1', 'host'),
('uuid-2', 'Bob', 'Johnson', 'bob@example.com', 'hash2', 'guest');

INSERT INTO Properties (property_id, host_id, name, description, location, pricepernight) VALUES
('prop-1', 'uuid-1', 'Cozy Cottage', 'A lovely small cottage.', 'Addis Ababa', 50.00);

INSERT INTO Bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status) VALUES
('book-1', 'prop-1', 'uuid-2', '2025-06-01', '2025-06-05', 200.00, 'confirmed');

INSERT INTO Payments (payment_id, booking_id, amount, payment_method) VALUES
('pay-1', 'book-1', 200.00, 'credit_card');

INSERT INTO Reviews (review_id, property_id, user_id, rating, comment) VALUES
('rev-1', 'prop-1', 'uuid-2', 5, 'Wonderful stay!');

INSERT INTO Messages (message_id, sender_id, recipient_id, message_body) VALUES
('msg-1', 'uuid-2', 'uuid-1', 'Hi, is the property available next month?');