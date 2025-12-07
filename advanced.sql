/*
Best-selling genres per country.

Complex: multi-step, subqueries, window functions
Which customer spent the most in their very first purchase?
Which artist has the highest average track length?
Rank employees by total revenue from their assigned customers.
Find albums where every track is over the dataset’s median track length.
*/


/*
-- Best-selling genres per country.
SELECT 
    c.country,
    g.name AS genre,
    SUM(il.unit_price * il.quantity) AS total_sales
FROM customer c
JOIN invoice i           ON i.customer_id = c.customer_id
JOIN invoice_line il     ON il.invoice_id = i.invoice_id
JOIN track t             ON t.track_id = il.track_id
JOIN genre g             ON g.genre_id = t.genre_id
GROUP BY 
    c.country,
    g.name;
*/
/*
-- Number of tracks per playlist. 
SELECT playlist_id,  count(track_id) 
FROM playlist_track
GROUP BY playlist_id
ORDER BY playlist_id;
*/
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
