select * from sakila.actor;
select first_name,actor_id from sakila.actor;
select first_name, last_name from sakila.actor where actor_id=24;
select *from sakila.customer;
select first_name,store_id from sakila.customer where store_id = 1;
select *from sakila.staff;
select first_name, last_name,store_id from sakila.customer where store_id=1 or customer_id=1;
select first_name, last_name,store_id from sakila.customer where not store_id=1;
select * from sakila.customer where last_name like "%D";
select * from emp.industry;
 
select * from  world.city order by CountryCode asc;
select * from world.city;
select * from world.country  where Region ="Antarctica" order by code asc;
select *from world.country order by SurfaceArea desc;
select *from world.country order by SurfaceArea desc limit 5;
select * from world.country where SurfaceArea between 193.0 and 800.0;
select * from world.country where SurfaceArea in ("Code","Name");
select concat(Continent,"-",Region) as Place from world.country;
select concat_ws(" - ", Continent,"-",Region) as Place from world.country;
select length(Name) as namecount from world.country;
select left(Name,4) as username from world.country;
select right(Name,4) as username from world.country;
select mid(Name,2,4) as username from world.country;
select * from sakila.film;
-- Aggregate functions --
select sum(length) as total_length from sakila.film;
select count(title) from sakila.film;
select avg(length) from sakila.film;
select max(length) as max_value from sakila.film;
select min(length) as min_value from sakila.film;
select truncate(rental_rate,1) as rate from sakila.film;
select ceil(rental_rate) as rate from sakila.film;
select floor(rental_rate) as rate from sakila.film;
select * from sakila.payment;
select date(payment_date) as dates from sakila.payment;
select * from emp.electric_vehicle_population_data;
select time(payment_date) as dates from sakila.payment;
select day(payment_date) as dates from sakila.payment;
select dayname(payment_date) as dates from sakila.payment;
select monthname(payment_date) as dates from sakila.payment;
select year(payment_date) as dates from sakila.payment;
-- case expression --
select customer_id,amount,
case
	when rental_id>1000 then "True"
    else "False"
end as ID
from sakila.payment;

select * from world.country;
select Name,count(code) from world.country group by Region;

select * from sakila.payment;
select * from sakila.country;
select * from sakila.city;
-- joins --
select city,country,city_id from city inner join country
on city.country_id=country.country_id;
select city,country,city_id from city left join country
on city.country_id=country.country_id;

select * from city right join country
on city.country_id=country.country_id;

select * from city cross join country
on city.country_id=country.country_id;
-- union--
select CountryCode from world.city
union
select continent from world.country;
-- Subqueries --
select avg(length) from sakila.film;
select * from sakila.film where length > 115;
select * from sakila.film where length > (select avg(length) from sakila.film);
create view Cont_data as select continent from world.country;
-- stored procedure in Mysql --
Delimiter &&
create procedure get_data()
begin
	select * from sakila.city;
end &&
Delimiter ; 
