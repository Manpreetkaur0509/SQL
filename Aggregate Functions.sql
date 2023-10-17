-- AGGREGATE FUNCTIONS 


-Q1: Find the total number of invoices.

 SELECT COUNT(*) 
 AS InvoiceCount
 FROM Invoice


--Q2: Calculate the average invoice total.

SELECT AVG(total)
from invoice



--Q3: Find the highest invoice total.


SELECT max(total)
FROM invoice



--Q4: Determine the lowest invoice total.

SELECT MIN(total)
FROM invoice


--Q5: Retrieve the number of customers in each city.


SELECT COUNT(*) , city 
from customer
GROUP BY city 


--Q6: Calculate the average length of tracks.


SELECT AVG(milliseconds) 
as avg_length
FROM track

--Q7:Find the number of albums released by each artist.

select count(album.album_id) as album_count , artist.name
FROM album
INNER JOIN artist
on 
album.album_id= artist.artist_id
group by artist.name
ORDER BY album_count DESC



-- Q8:Get the total sales for each customer.

SELECT customer.first_name , customer.last_name , SUM(invoice.total) as Total_sales
FROM Customer
JOIN Invoice
ON customer.customer_id = invoice.customer_id
GROUP BY Customer.customer_id
ORDER BY Total_sales DESC

-- Q9: List the artists with the most albums.



SELECT Artist.Name AS Artist, COUNT(Album.Album_ID) AS AlbumCount
FROM Artist
JOIN Album ON Artist.Artist_ID = Album.Artist_ID
GROUP BY Artist.Artist_ID
ORDER BY AlbumCount DESC;




-- Q10 : Retrieve the top 10 most popular genres based on the number of tracks.


SELECT Genre.Name, COUNT(Track.Track_ID) AS TrackCount
FROM Genre
JOIN Track ON Genre.Genre_ID = Track.Genre_ID
GROUP BY Genre.Name
ORDER BY TrackCount DESC
LIMIT 10









