-- 1. INNER JOIN: All bookings with respective users
SELECT b.*, u.*
FROM bookings b
INNER JOIN users u ON b.user_id = u.id
ORDER BY b.id;

-- 2. LEFT JOIN: All properties with their reviews (including properties with no reviews)
SELECT p.*, r.*
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id
ORDER BY p.id, r.rating DESC;

-- 3. FULL OUTER JOIN (emulated in MySQL): All users and all bookings
SELECT u.*, b.*
FROM users u
LEFT JOIN bookings b ON u.id = b.user_id
UNION
SELECT u.*, b.*
FROM users u
RIGHT JOIN bookings b ON u.id = b.user_id
WHERE u.id IS NULL
ORDER BY u.id, b.start_date;
