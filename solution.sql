
-- Q1
SELECT COUNT(film_id)
FROM film
WHERE length > 
(
	SELECT AVG(length)
	FROM film
)


-- Q2
SELECT COUNT(*)
FROM film
WHERE rental_rate = 
(
	SELECT MAX(rental_rate)
	FROM film
)


-- Q3
SELECT title
FROM film
WHERE rental_rate = (SELECT MIN(rental_rate) FROM film) AND replacement_cost = (SELECT MIN(replacement_cost) FROM film)
ORDER BY rental_rate ASC, replacement_cost ASC;*/

-- Q4
SELECT first_name, last_name, customer.customer_id, COUNT(*) 
FROM payment
JOIN customer ON payment.customer_id = customer.customer_id
GROUP BY customer.customer_id
ORDER BY COUNT(*) DESC
LIMIT 5;







