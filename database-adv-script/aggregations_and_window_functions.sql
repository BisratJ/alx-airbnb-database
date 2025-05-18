-- 1. Total bookings per user (using GROUP BY)
SELECT 
    user_id, 
    COUNT(*) as total_bookings
FROM bookings
GROUP BY user_id
ORDER BY total_bookings DESC;

-- 2a. Rank properties by booking count (using RANK())
SELECT 
    property_id,
    COUNT(*) as booking_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) as popularity_rank
FROM bookings
GROUP BY property_id
ORDER BY popularity_rank;

-- 2b. Alternative using ROW_NUMBER()
SELECT 
    property_id,
    COUNT(*) as booking_count,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) as row_num_rank
FROM bookings
GROUP BY property_id
ORDER BY row_num_rank;

-- 2c. Combined version showing both functions
SELECT 
    property_id,
    COUNT(*) as booking_count,
    RANK() OVER (ORDER BY COUNT(*) DESC) as rank_with_ties,
    DENSE_RANK() OVER (ORDER BY COUNT(*) DESC) as dense_rank_with_ties,
    ROW_NUMBER() OVER (ORDER BY COUNT(*) DESC) as strict_row_number
FROM bookings
GROUP BY property_id
ORDER BY booking_count DESC;
