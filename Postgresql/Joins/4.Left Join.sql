------------- LEFT OUTER JOIN -----
--	A LEFT OUTER JOIN results in the set of records that are in the left table , if there is no match with the right table , then those results are null.
--	Unlike FULL OUTER JOIN and INNER JOIN , order will actually  matter.

-- Syntax :
-- 		SELECT * FROM TableA
-- 		LEFT OUTER JOIN TableB
-- 		ON TableA.col_match = TableB.col_match
	
-- It will show the columns of both unique and shared column of tableA.


-- To only show the only distinct column of left table  without common/shared column
-- Syntax :
--		SELECT * FROM TableA
--		LEFT OUTER JOIN  TableB
-- 		ON TableA.col_match = TableB.col_match
-- 		WHERE TableB.id is null

SELECT * FROM FILM;	-- ( 4000+ rows)
SELECT * FROM inventory; -- (1000 rows)

SELECT title,film.film_id,inventory_id,store_id
FROM film
LEFT JOIN inventory ON
inventory.film_id = film.film_id; 

SELECT title,film.film_id,inventory_id,store_id
FROM film
LEFT OUTER JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory.film_id is NULL;

SELECT title,film.film_id,inventory_id,store_id
FROM film
LEFT JOIN inventory ON
inventory.film_id = film.film_id
WHERE inventory_id is NULL order by film_id ;
