--------- OUTER JOINS ---------------
-- There are few different types of OUTER JOINS
-- They will allow us to specify how to deal with values only present in one of the tables being joined.
-- They are :-  FULL OUTER JOIN
-- 				LEFT OUTER JOIN
-- 				RIGHT OUTER JOIN

-- SYNTAX :-

--	SELECT * FROM TableA 
--	FULL OUTER JOIN TableB
--	ON TableA.col_match = TableB.col_match

--  like INNER JOIN , OUTER JOIN is also symmetrical so it can be written by changing table order  as

--	SELECT * FROM TableB
--	FULL OUTER JOIN TableA
--  ON TableA.col_match = TableB.col_match


-- FULL OUTER JOIN with WHERE
	-- Get rows unique to either table (rows not found in both tables)
	
	-- WITH IS NULL
	--		SELECT * FROM TableA
	--		FULL OUTER JOIN TableB
	--		ON TableA.col_match = TableB.col_match
	--		WHERE TableA.id IS NULL OR  TableB.id IS NULL;
	--
	--  Here using IS NULL with where clause helps to filter/remove the common column in both tables or only
	--
	
SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id;

SELECT * FROM customer
FULL OUTER JOIN payment
ON customer.customer_id = payment.customer_id
WHERE customer.customer_id IS NULL OR payment.payment_id IS NUll;









