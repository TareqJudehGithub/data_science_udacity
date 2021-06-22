-- Q1  (I added LEFT AND RIGHT for more practice):
SELECT	act.first_name,
		act.last_name,
		CONCAT(act.first_name,' ',act.last_name) AS full_name,
		f.title AS film_title,
-- 		LEFT(f.title, POSITION(' ' IN f.title) -1) AS "title 1st word",
-- 		RIGHT(f.title, LENGTH(f.title) - POSITION(' ' IN f.title)) AS " title 2nd word",
		f.description AS film_description,
		f.length AS film_length	
FROM film AS f
JOIN film_actor AS f_act
ON f.film_id = f_act.film_id
JOIN actor as act
ON act.actor_id = f_act.actor_id;

--Q2. 
SELECT	CONCAT(act.first_name,' ',act.last_name) AS full_name,
		f.title AS film_title,
		f.length
FROM film AS f
JOIN film_actor AS f_act
ON f.film_id = f_act.film_id
JOIN actor as act
ON act.actor_id = f_act.actor_id
WHERE f.length > 60;

--Q3.
SELECT	act.actor_id,
		CONCAT(act.first_name,' ',act.last_name) AS full_name,
		COUNT(act.actor_id) AS total_movies
FROM film AS f
JOIN film_actor AS f_act
ON f.film_id = f_act.film_id
JOIN actor as act
ON act.actor_id = f_act.actor_id
GROUP BY 1, 2
ORDER BY 3 DESC;


SELECT *
FROM actor;

SELECT *
FROM film_actor;

select