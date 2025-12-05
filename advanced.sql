/*
Number of tracks per playlist. Best-selling genres per country.

Complex: multi-step, subqueries, window functions
Which customer spent the most in their very first purchase?
Which artist has the highest average track length?
Rank employees by total revenue from their assigned customers.
Find albums where every track is over the dataset’s median track length.
*/

-- Number of tracks per playlist. 

/*
-- Top customers by total spending.
SELECT SUM(i.total) AS total_spent, concat(first_name, ' ', last_name) as full_name
FROM invoice i
	JOIN customer c 
		ON c.customer_id = i.customer_id
GROUP BY c.customer_id
ORDER BY total_spent DESC
LIMIT 5;
*/
/*
-- Total sales by country
SELECT SUM(i.total), c.country
FROM invoice i 
	JOIN customer c 
		ON c.customer_id = i.customer_id
GROUP BY c.country
ORDER BY c.country;
*/
