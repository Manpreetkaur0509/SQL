-- Q1: Who is the senior most employee based on job title? */

SELECT title, last_name, first_name 
FROM employee
ORDER BY levels DESC
LIMIT 1


--q2:

--Which countries have the most invoices ?

--select * from invoice

SELECT COUNT (*) as c, billing_country 
from invoice
group by billing_country
order by c desc


---Q3
What are the 3 values of total invoices ?

select * from invoice

select * from invoice
ORDER BY total DESC
limit 3


select TOTAL from invoice
ORDER BY total DESC
limit 3


/* Q4: Which city has the best customers? We would like to throw a promotional Music Festival in the city we made the most money. 
Write a query that returns one city that has the highest sum of invoice totals. 
Return both the city name & sum of all invoice totals */


SELECT * FROM invoice


SELECT SUM(total) as Invoice_total, billing_city
from invoice
group by billing_city
order by Invoice_total desc
limit 5

/* Q5: Who is the best customer? The customer who has spent the most money will be declared the best customer. 
Write a query that returns the person who has spent the most money.*/


select customer.customer_id , customer.first_name ,customer.last_name ,  SUM(invoice.total) as Total_spent
from customer
JOIN invoice
on customer.customer_id= Invoice.customer_id
group by
customer.customer_id ,
customer.first_name,
customer.last_name

ORDER BY Total_spent DESC

LIMIT 1 ;

