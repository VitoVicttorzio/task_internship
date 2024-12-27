# NUMBER OF FILMS IN EACH CATEGORY

select f3.category_id, f3.name as category_name, COUNT(f1.film_id) AS quantity
from film as f1
inner join film_category as f2
on f1.film_id = f2.film_id
inner join category as f3
on f3.category_id = f2.category_id
group by f3.category_id, f3.name
order by 3 desc;

# the 10 actors whose films were rented the most

SELECT actor.actor_id,  CONCAT(first_name, ' ', last_name) AS full_name, count(rental.rental_id) as rental_count
from actor 
inner join film_actor 
on  actor.actor_id = film_actor.actor_id
inner join film
on film_actor.film_id = film.film_id
inner join inventory
on film.film_id = inventory.inventory_id
inner join rental 
on inventory.inventory_id = rental.inventory_id 
group by 1, 2
order by rental_count desc
limit 10; 


# the category of films on which the most money was spent



