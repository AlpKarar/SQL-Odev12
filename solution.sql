
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
SELECT customer_id, COUNT(customer_id) AS "Num. of Shopping"
FROM payment
GROUP BY customer_id
ORDER BY COUNT(customer_id) DESC
LIMIT 1;







