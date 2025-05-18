-- 1. Total bookings per user
SELECT user_id, COUNT(*) as total_bookings
FROM bookings
GROUP BY user_id;

-- 2. Rank properties by booking count
SELECT 
    property_id,
    COUNT(*) as booking_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) as popularity_rank
FROM bookings
GROUP BY property_id;
