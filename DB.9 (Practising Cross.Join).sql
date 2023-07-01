SELECT c.customer_id, c.first_name, c.last_name, r.rental_id
FROM customer c
CROSS JOIN rental r;