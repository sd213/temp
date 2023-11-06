SELECT * FROM customer;
SELECT * FROM address;
SELECT customer_id,customer.address_id,email,district FROM customer
INNER JOIN address
on customer.address_id = address.address_id
WHERE district = 'California';

SELECT * FROM film_actor;
SELECT * FROM actor;

SELECT  title from film_actor 
INNER JOIN actor
on film_actor.actor_id = actor.actor_id 
INNER JOIN film
on film_actor.film_id = film.film_id
WHERE first_name = 'Nick' and last_name = 'Wahlberg';