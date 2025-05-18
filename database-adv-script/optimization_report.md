# Query Optimization Report

## Initial Query Performance
- Execution time: 320ms
- Using filesort for ORDER BY
- Examining 15,000 rows

## Optimized Query
```sql
SELECT 
    b.*,
    u.name as user_name,
    u.email as user_email,
    p.title as property_title
FROM bookings b
JOIN users u USE INDEX (idx_users_id) ON b.user_id = u.id
JOIN properties p USE INDEX (idx_property_id) ON b.property_id = p.id
WHERE b.start_date BETWEEN '2025-01-01' AND '2025-12-31'
ORDER BY b.start_date DESC;
