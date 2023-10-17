-- RETREIVE DATA 

--Q1:
--Retrieve the list of all customers in the database .
 select * from customer
 
 
 --Q2: 
 -- Find all unique cities where customers are located 
 
  
 SELECT DISTINCT city FROM customer
 
 
 --Q3 : Retrieve the names of all artists in the database.
 
 
 SELECT name FROM artist 
 
 
 --Q4 : Get a list of all geners available in the database 
 
 SELECT name from genre
 
 
 -- q5 : Find the total number of tracks in the database 
 
 
 SELECT COUNT(*) 
 AS TRACK_COUNT 
 from track  
 
 
 
 
 -- Q6:
 --List the name sof all tracks greated than 4minutes (240,000 miliseconds)
 
 SELECT name 
 from track
 WHERE  milliseconds>240000
 
 
 --Q7 : 
 -- Retrieve the customer names and their email addresses 
 
 SELECT first_name, last_name , email
 FROM customer 
 
 Q8 : Retrieve the names of all artists and their albums.


 SELECT artist.name , album.title 
 FROM artist
 JOIN album
 ON 
    artist.artist_id = album.artist_id
 
 
 -- Q9: List all employees and their job titles.
 
 SELECT first_name, last_name , title from employee
 

-- Q10: find all tracks where unit proice is 0.99 rs

SELECT name 
FROM track
WHERE unit_price = 0.99
 
 
 select * from track
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 