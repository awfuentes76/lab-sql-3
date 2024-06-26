SELECT 
  COUNT(DISTINCT last_name) AS actor_names
FROM 
  sakila.actor;
  
SELECT 
  COUNT(DISTINCT language_id) AS distinct_languages
FROM 
  sakila.film;
  
SELECT 
  COUNT(*) AS rate_PG_13
FROM 
  sakila.film
WHERE 
  rating = 'PG-13';
  
SELECT 
  title, length
FROM 
  sakila.film
WHERE 
  release_year = 2006
ORDER BY 
  length DESC
LIMIT 10;

SELECT 
  DATEDIFF(MAX(rental_date), MIN(rental_date)) AS operating_days
FROM 
  sakila.rental;
  
SELECT(rental_date)
FROM
sakila.rental;
  
SELECT 
  *, 
  MONTH(rental_date) AS mes, 
  DAYNAME(rental_date) AS dia_de_la_semana
FROM 
  sakila.rental
LIMIT 20;

SELECT 
  *, 
  CASE 
    WHEN DAYNAME(rental_date) IN ("Saturday", "Sunday") THEN 'weekend' 
    ELSE 'workday' 
  END AS day_type
FROM 
  sakila.rental;
  
  
SELECT 
  DATE_FORMAT(rental_date, '%m-%Y') AS mes_año 
FROM 
  sakila.rental 
ORDER BY 
  mes_año DESC;


