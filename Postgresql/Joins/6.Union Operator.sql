------------------------ UNION
-- UNION operator is used to combine the result-set of two or more SELECT statements.
-- It basically serves to directly concatenate two results together ,essentially "pasting " them together.

-- SYNTax:

--	SELECT column_name(s) FROM table1 	UNION	SELECT column_name(s) FROM table2;

-- select * from film
-- UNION
-- select * from inventory; -- will result error as each UNION query must have the same number of columns

SELECT film_id from film
UNION
SELECT film_id from inventory;