-- Number of films in each category

SELECT
	f3.category_id, f3.name AS category_name,
	COUNT(f1.film_id) AS quantity
FROM
	film AS f1
INNER JOIN film_category AS f2
	ON f1.film_id = f2.film_id
INNER JOIN category AS f3
	ON f3.category_id = f2.category_id
GROUP BY f3.category_id, f3.name
ORDER BY 3 DESC;



-- The 10 actors whose films were rented the most

SELECT 
	actor.actor_id,  
	CONCAT(first_name, ' ', last_name) AS full_name, 
	COUNT(rental.rental_id) AS rental_count
FROM 
	actor 
INNER JOIN film_actor 
	ON  actor.actor_id = film_actor.actor_id
INNER JOIN film
	ON film_actor.film_id = film.film_id
INNER JOIN inventory
	ON film.film_id = inventory.inventory_id
INNER JOIN rental 
	ON inventory.inventory_id = rental.inventory_id 
GROUP BY 1, 2
ORDER BY rental_count DESC
LIMIT 10; 


-- The category of films on which the most money was spent

SELECT c.name AS category_name, 
	sum(f.replacement_cost) AS total_cost
FROM 
	film f
INNER JOIN film_category fc 
	ON f.film_id = fc.film_id
INNER JOIN category c 
	ON fc.category_id = c.category_id
GROUP BY c.name
ORDER BY total_cost DESC
LIMIT 1;


-- Movies that does not have inventory

SELECT 
	film.film_id, 
	title
FROM film
LEFT JOIN inventory 
	ON film.film_id = inventory.film_id
WHERE inventory_id IS NULL
GROUP BY 1,2
;


-- Top 3 actors, who appears in category 'Children'

WITH children AS (
	SELECT 
		actor.actor_id, 
		CONCAT(actor.first_name, ' ', actor.last_name) AS full_name, 
		category.name, 
		COUNT(actor.actor_id) AS apperance_count
	FROM 
		actor 
	INNER JOIN film_actor 
		ON actor.actor_id = film_actor.actor_id 
	INNER JOIN film 
		ON film_actor.film_id = film.film_id
	INNER JOIN film_category
		ON film.film_id = film_category.film_id
	INNER JOIN category
   		ON film_category.category_id = category.category_id 
	WHERE category.name = 'Children'
	GROUP BY actor.actor_id, category.name
	ORDER BY apperance_count DESC)

SELECT * FROM
	(SELECT *,
		DENSE_RANK() OVER (ORDER BY children.apperance_count DESC) AS top
	FROM
		children) AS tops
	WHERE top BETWEEN 1 AND 3;


-- Cities that have active and inactive customers

SELECT
	city.city_id, city, 
	COUNT(CASE WHEN customer.active = 0 THEN 1 ELSE 0 END) AS inactive_customers,
	COUNT(CASE WHEN customer.active = 1 THEN 1 ELSE 0 END) AS active_customers
FROM city 
INNER JOIN address
	ON city.city_id = address.city_id
INNER JOIN customer 
	ON customer.address_id = address.address_id
GROUP BY 1,2
ORDER BY 4 desc;


-- The category of movies that has the highest number of total rental hours in cities 

WITH ren AS (
    SELECT 
        category.category_id, 
        category.name, 
        film.length,
        COUNT(rental.rental_id) AS total_rentals
    FROM rental
    INNER JOIN inventory 
        ON rental.inventory_id = inventory.inventory_id
    INNER JOIN film 
        ON film.film_id = inventory.film_id
    INNER JOIN film_category
        ON film.film_id = film_category.film_id 
    INNER JOIN category
        ON category.category_id = film_category.category_id
    GROUP BY category.category_id, category.name, film.length
), 

total_1 AS (
    SELECT 
        ren.category_id, 
        ren.name, 
        SUM(ren.length * ren.total_rentals) AS hours_sum
    FROM ren
    WHERE ren.name LIKE 'A%'
    GROUP BY ren.category_id, ren.name
), 

total_2 AS (
    SELECT 
        ren.category_id, 
        ren.name, 
        SUM(ren.length * ren.total_rentals) AS hours_sum
    FROM ren
    WHERE ren.name LIKE '%-%'
    GROUP BY ren.category_id, ren.name
)

SELECT 
	total_1.category_id,
	total_1.name,
	total_1.hours_sum
FROM total_1
WHERE total_1.hours_sum = (
	SELECT max(total_1.hours_sum)
	FROM total_1)
UNION
SELECT 
	total_2.category_id,
	total_2.name,
	total_2.hours_sum
FROM total_2
WHERE total_2.hours_sum = (
	SELECT max(total_2.hours_sum)
	FROM total_2)
;



