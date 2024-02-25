
use mavenmovies;

-- 1.Identify the primary keys and foreign keys in maven movies db. Discuss the differences
-- Answer 
SELECT * FROM information_schema.key_column_usage WHERE constraint_name = 'PRIMARY' AND table_schema = 'mavenmovies';
SELECT * FROM information_schema.key_column_usage WHERE constraint_name != 'PRIMARY' AND table_schema = 'mavenmovies';
-- Difference bw primary key & Foreign key
-- Primary Key
-- It is a column (or set of columns) in a table that uniquely identifies each row. (a unique id)
-- There is only 1 PK & it should be NOT null.
--	Foreign Key
-- A foreign key is a column (or set of columns) in a table that refers to the primary key in another table.
-- FKs can have duplicate & null values.
-- There can be multiple FKs.

-- 2 List all details of actors
select *  from actor;















-- 3 List all customer information from DB.
select * from customer;





-- 4 List different countries.
SELECT DISTINCT country FROM country;












-- 5 Display all active customers.
Select * from customer
where active = 1;



-- 6 List of all rental IDs for customer with ID 1.
select rental_id from rental
where customer_id = 1;












-- 7 Display all the films whose rental duration is greater than 5 .
Select title from film
where rental_duration >5;






-- Q 8. List the total number of films whose replacement cost is greater than $15 and less than$20. 
Select title, replacement_cost from film
where replacement_cost between 15 AND 20;










 -- Q 9. Display the count of unique first names of actors. 
SELECT count(distinct(first_name)) as first FROM actor;








-- Display the first 10 records from the customer table
select * from customer
limit 10;










-- Q 11.  Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like "a%"
limit 3;













-- Q 12. Display the names of the first 5 movies which are rated as ‘G’
select title from film where rating = "G"
limit 5;









-- Q 13. Find all customers whose first name starts with "a".
select first_name from customer where first_name like "a%";













-- Q 14.  Find all customers whose first name ends with "a". 
select first_name from customer where first_name like "%a";











-- Q 15.  Display the list of first 4 cities which start and end with ‘a’ .
select city from city where city like "a%a"
limit 4;












-- Q 16.  Find all customers whose first name have "NI" in any position.
select first_name from customer where first_name like "%NI%";













-- Q 17.  Find all customers whose first name have "r" in the second position .
select first_name from customer where first_name like "_r%";













/* 18.  Find all customers whose first name starts with "a" and are 
   at least 5 characters in length. */
   select first_name from customer where first_name like "a%" and length(first_name) >=5 ;
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   
   -- Q 19.  Find all customers whose first name starts with "a" and ends with "o". 
     select * from customer where first_name like "a%o";
     
     
     
     
     
     
     
     
     
     
     
     
     
     
     -- Q 20.  Get the films with pg and pg-13 rating using IN operator. 
     select title, rating from film where rating IN("pg", "pg-13");
     
     
     
     
     
     
     
     
     
     
     
     
     
     -- 21 Get the films with length between 50 to 100 using between operator.
     select title, length from film where length between 50 and 100;
     
     
     
     
     
     
     
     
     
     
     
     
     
     -- 22 Get the top 50 actors using limit operator.
     select * from actor limit 50;
     
     
     
     
     
     
     
     
     
     
     
     
     
     -- 23 Get the distinct film ids from inventory table.
     select distinct film_id from inventory;
     
     

























