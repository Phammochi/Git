SELECT EXTRACT(MONTH FROM p.payment_date) AS month, SUM(p.amount) AS total_amount_collected
FROM payment p
GROUP BY EXTRACT(MONTH FROM p.payment_date);


