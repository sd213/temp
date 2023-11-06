----Time stamp and Extract ------

-- 		TIME - contains only time
-- 		DATE - contains only date
-- 		TIMESTAMP - contains date and time
-- 		TIMESTAMPTZ - contains date,time, and timezone

SHOW ALL;
SHOW TIMEZONE;
SELECT NOW();
SELECT TIMEOFDAY();
SELECT CURRENT_TIME;
SELECT CURRENT_DATE;

-- 		TIMEZONE
--		NOW
--		TIMEOFDAY
--		CURRENT_TIME
--		CURRENT_DATE

--- To extract information from a time based data type using:
--			EXTRACT()
--			AGE()
--			TO_CHAR()

-- EXTRACT() :-   allows you to "extract" or obtain a sub-component of a date value.
--			YEAR
--			MONTH
--			DAY
--			WEEK
--			QUARTER

-- 			for Example,  EXTRACT(YEAR FROM date_col)

-- AGE():-  calculates and returns the current age given a timestamp
--		Usage:
--			AGE(date_col)

-- TO_CHAR():- General function to convert data types to text
--			   Useful for timestamp formatting
--		Usage:
--			TO_CHAR(date_col,'mm-dd-yyyy')

SELECT * FROM payment;
SELECT EXTRACT(YEAR FROM payment_date) AS payment_year FROM payment;
SELECT EXTRACT(MONTH FROM payment_date) AS payment_month FROM payment;
SELECT EXTRACT(DAY FROM payment_date) AS payment_day FROM payment;
SELECT EXTRACT(WEEK FROM payment_date) AS payment_week FROM payment;
SELECT EXTRACT(QUARTER FROM payment_date) AS payment_quarter FROM payment;
SELECT AGE('2001-10-19','2024-10-19');
SELECT AGE(payment_date) FROM payment;
SELECT TO_CHAR(payment_date,'MONTH-YYYY') FROM payment;
SELECT TO_CHAR(payment_date,'MONTH YYYY') FROM payment;
SELECT TO_CHAR(payment_date,'DD MONTH YYYY') FROM payment;
SELECT TO_CHAR(payment_date,'MM/dd/YYYY') FROM payment;
SELECT TO_CHAR(payment_date,'M/d/YY') FROM payment;
SELECT TO_CHAR(54454,'124');


--------------------------------------------------------------------  CHALLANGE TASKS------------------------------------------------------------------
SELECT * FROM PAYMENT;
SELECT DISTINCT(TO_CHAR (PAYMENT_DATE,'MONTH')) FROM PAYMENT;

SELECT TO_CHAR(PAYMENT_DATE,'DAY') AS PAY_DAY,COUNT(*) FROM PAYMENT GROUP BY PAY_DAY ;
SELECT TO_CHAR(PAYMENT_DATE,'DAY') AS PAY_DAY,COUNT(*) FROM PAYMENT WHERE EXTRACT(DOW FROM PAYMENT_DATE)  = 1 GROUP BY PAY_DAY ;