select *  from actor
select * from payment p 
select * from customer c 
select * from inventory i 
select * from film_actor fa 


select COUNT(*)
from actor a 
where last_name = 'Wahlberg';


select customer_id, amount
from payment p 
where amount between 3.99 and 5.99

select film_id, COUNT(*) as num
from inventory i 

select 
group by film_id
order by num desc;

select COUNT(*) 
from customer c 
where last_name = 'William';



select staff_id,SUM(rental_id)
from payment p 
group by staff_id;

7
select COUNT(*), film_id 
from film_actor fa 
group by film_id;

8
select Count(*)
from customer c 
where store_id = 1 and last_name  like '%es';

How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
with ids between 380 and 430? (use group by and having > 250)

9
select COUNT(*) as num 
from payment p 
where customer_id between 380 and 430 
group by rental_id
having num > 250;

SELECT amount, COUNT(*) AS payment_count
FROM payment p 
WHERE customer_id BETWEEN 380 AND 430
GROUP BY rental_id 
HAVING COUNT(*) > 250;



select count(*), rental_id
from payment p 
group by rental_id


10
select * from film f 
select count (*), rating  from film f 
group by rating 




11
select SUM(amount)
from payment p 
where amount > 5.99;

12
select count(amount) as elephant
from payment p 
where amount > 5.99;

13