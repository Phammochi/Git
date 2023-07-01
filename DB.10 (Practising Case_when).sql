SELECT
    c.customer_id,
    c.first_name,
    c.last_name,
    r.rental_count,
    CASE
        WHEN r.rental_count BETWEEN 0 AND 12 THEN 'Regular Customer'
        WHEN r.rental_count BETWEEN 13 AND 20 THEN 'Premium Customer'
        ELSE 'Platinum Customer'
    END AS Node_Type
FROM
    customer c
LEFT JOIN (
    SELECT
        customer_id,
        COUNT(*) AS rental_count
    FROM
        rental
    GROUP BY
        customer_id
) r ON c.customer_id = r.customer_id
ORDER BY
    r.rental_count ASC 
	LIMIT 20; 
