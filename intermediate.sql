/*
-- Find the top 10 most expensive tracks with album and artist attached.
SELECT DISTINCT t.unit_price, alb.title, art.name
FROM track as t
JOIN album alb 
	ON alb.album_id = t.album_id 
	JOIN artist art
		ON alb.artist_id = art.artist_id
ORDER BY t.unit_price DESC
LIMIT 10;
*/
/*
-- # Get each invoice with customer name and country.
SELECT i.invoice_id, c.country, concat(c.first_name, c.last_name) as customer_full_name
FROM customer c
JOIN invoice i 
	on i.customer_id = c.customer_id;
*/
/*
-- # List employees & their customers
  SELECT concat(e.first_name, e.last_name) as employee_full_name, concat(c.first_name, c.last_name)
  FROM employee e
  	JOIN customer c
			ON c.support_rep_id = e.employee_id;
*/

