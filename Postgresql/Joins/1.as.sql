---------AS------------------------------------------
-- AS clause allows us to create an "alias" for a column or result.
-- AS operator gets executed at the very end of query and AS used in only SELECT statement meaning we can not use the ALIAS inside a where operator.



-- select * from film;
-- select count(*) as total from film;
-- select customer_id as id from ;
select amount as rental_price from payment;
-- select sum(amount) As net_revenue from payment
SELECT COUNT(amount) AS num_transactions FROM payment;
SELECT customer_id, SUM(amount)AS "total spent" FROM PAYMENT GROUP BY customer_id;

SELECT * from payment;

-- SELECT customer_id,SUM(amount) AS total_spent FROM payment GROUP BY customer_id HAVING total_spent;  -- here sum(amount) get alias at last so it will show column "total_spent" does not exist 
-- SELECT customer_id,amount AS paid FROM payment WHERE paid > 2; -- It wil give error column "paid" does not exist. So alias should not be used other than SELECT . 
SELECT customer_id,SUM(amount) AS total_spent 
FROM payment 
GROUP BY customer_id
HAVING SUM(amount) > 100  ;

