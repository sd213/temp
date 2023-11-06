---------------- INNER JOIN ---------------------
-- There are several types of JOINS  and INNER JOIN is one of them.
-- What is JOIN operation ?
-- JOINs allow us to combine multiple tables together.
-- The main reason for the different JOIN types is to decide how to deal with information only present in one of the joined tables.
-- SYNTAX:--
	--		SELECT * FROM TableA 
	--		INNER JOIN 	TableB
	--		ON TableA.col_match = TableB.col_match
	
-- INNER JOIN is symmetrical so joining tables with swapping the tables will produce same restult
-- SYNTAX:--
	--		SELECT * FROM TableB
	--		INNER JOIN  TableA
	--		ON TableA.col_match = TableB.col_match
-- so The table order does not matter in an INNER JOIN
-- Also if you see just JOIN without the INNER , POSTGRESQL will treat it as an INNER JOIN

SELECT * FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id; -- it will show cusotmers who did the payment or show payments of peaople who are registered in customer table.

SELECT * FROM customer
INNER JOIN payment
ON payment.customer_id = customer.customer_id; --- same as before  as order does not matter.

SELECT  payment_id FROM payment
INNER JOIN customer
ON payment.customer_id = customer.customer_id; -- here no need to write payment.payment_id as only one payment_id column is unique to only payment table or available only in payment table .
 
SELECT	payment_id,payment.customer_id,first_name FROM payment  -- here payment.customer_id is written as there is an ambiguity of columns in  both customer and payment table . you can here mention "cusotmer.first_name" instead of  "first_name"  as "first_name" is an unique column for "customer table" or available only in "customer" table 
INNER JOIN customer 
ON payment.customer_id = customer.customer_id






















-- SELECT * FROM  payment INNER JOIN customer ON customer_id=customer_id; -- it will show ERROR:  column reference "customer_id" is ambiguous
-- SELECT * FROM  payment INNER JOIN customer ON customer.customer_id=payment.customer_id ;
-- SELECT payment.customer_id,email,first_name,last_name, address_id FROM payment INNER JOIN customer ON customer.customer_id=payment.customer_id group by payment.customer_id,email,first_name,last_name,address_id order by customer_id;


























