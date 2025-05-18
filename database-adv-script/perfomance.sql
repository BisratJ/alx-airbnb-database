-- Initial complex query (to be optimized)
SELECT 
    b.*,
    u.name as user_name,
    u.email as user_email,
    p.title as property_title,
    p.location as property_location,
    pay.amount,
    pay.payment_method
FROM bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id
WHERE b.start_date BETWEEN '2025-01-01' AND '2025-12-31'
ORDER BY b.created_at DESC;
