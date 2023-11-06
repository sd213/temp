------------------ RIGHT JOIN -----------------
-- A Right Join is essentially the same as a LEFT JOIN , except the tables are switched.
-- This would be  the same as switching the table order in a LEFT OUTER JOIN.
--  syntax:-	
-- 		SELECT * FROM TableA
-- 		RIGHT OUTER JOIN TableB
-- 		ON TableA.col_match = TableB.col_match;

-- it can be written as :
-- 		SELECT * FROM TableA
-- 		RIGHT JOIN TableB
-- 		ON TableA.col_match = TableB.col_match;

-- Like LEFT JOIN , It is asymmetric so if order will change then colum will change.
-- Like LEFT JOIN 'WHERE ' and ' is NULL' can be used to show only columns that can be found exclusively in TableB and are not present or null in TableA.
--		SELECT * FROM TableA
--		RIGHT OUTER JOIN TableB
--		ON TableA.col_match = TableB.col_match
--		WHERE TableA.id IS null

SELECT * FROM FILM;	-- ( 1000+ rows)
SELECT * FROM inventory; -- (4000 rows)

SELECT title,film.film_id,inventory_id,store_id
FROM film
RIGHT JOIN inventory ON
inventory.film_id = film.film_id;

SELECT title,film.film_id,inventory_id,store_id
FROM film
RIGHT JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id is NULL ;


SELECT title,film.film_id,inventory_id,store_id
FROM inventory
RIGHT JOIN film ON 
inventory.film_id = film.film_id
WHERE inventory.film_id is NULL ;
