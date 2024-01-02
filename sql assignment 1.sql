use mavenmovies;
-- Q.1 Identify the primary keys and foreign keys in maven movies db. Discuss the differences
SELECT 
    table_name, column_name
FROM
    information_schema.key_column_usage
WHERE
    constraint_name = 'primary'
        AND table_schema = 'mavenmovies';
SELECT 
    table_name, column_name
FROM
    information_schema.key_column_usage
WHERE
    constraint_name = 'foreign'
        AND table_schema = 'mavenmovies';
       -- Primary key: A primary key focuses on the uniqueness of the table, it assures the value in the specific column is unique.
       --              a table can have only one primary key.
       -- Foreign key: A foreign key is generally used to build a relationship between the two tables. 
       
-- Q.2 List all details of actors
select * from actor;

-- Q.3 List all customer information from DB.
select * from customer;

-- Q.4 List different countries.
select * from country;

-- Q.5 Display all active customers.
select * from customer where active = 1;

-- Q.6 List of all rental IDs for customer with ID 1.
select rental_id, customer_id from rental where customer_id = 1;

-- Q.7 Display all the films whose rental duration is greater than 5 .
select film_id from film where rental_duration > 5;

-- Q.8 List the total number of films whose replacement cost is greater than $15 and less than $20.
select count(film_id) from film where replacement_cost between 15 and 20 ;

-- Q.9 Find all customers whose first name have "NI" in any position.
select * from customer where first_name like '%ni%';

-- Q.10 Display the count of unique first names of actors.
select count(distinct first_name) from actor;

-- Q.11 Display the first 10 records from the customer table.
select * from customer order by customer_id asc limit 10;

-- Q.12 Display the first 3 records from the customer table whose first name starts with ‘b’.
select * from customer where first_name like "b%"  limit 3;

-- Q.13 Display the names of the first 5 movies which are rated as ‘G’.
select title from film where rating = "G" limit 5;

-- Q.14 Find all customers whose first name starts with "a".
select * from customer where first_name like 'a%';

-- Q.15 Find all customers whose first name ends with "a".
select * from customer where first_name like '%a';

-- Q.16 Display the list of first 4 cities which start and end with ‘a’ .
select * from city where city like 'a%a';

-- Q.17 Find all customers whose first name have "r" in the second position .
select * from customer where first_name like "_r%";

-- Q.18 Find all customers whose first name starts with "a" and are at least 5 characters in length.
select * from customer where first_name like 'a%' and length(first_name) > 5;

-- Q.19 Find all customers whose first name starts with "a" and ends with "o".
select * from customer where first_name like "a%o";

-- Q.20 Get the films with pg and pg-13 rating using IN operator.
select * from film where rating in ("PG","PG-13");

-- Q.21 Get the films with length between 50 to 100 using between operator.
select * from film where length between 50 and 100;

-- Q.22 Get the top 50 actors using limit operator.
select * from actor order by actor_id limit 50;

-- Q.23 Get the distinct film ids from inventory table.
select distinct film_id from inventory;