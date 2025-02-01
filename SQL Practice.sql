select * from sakila.actor;
select first_name,actor_id from sakila.actor;
select first_name, last_name from sakila.actor where actor_id=24;
select *from sakila.customer;
select first_name,store_id from sakila.customer where store_id = 1;
select *from sakila.staff;
select first_name, last_name,store_id from sakila.customer where store_id=1 or customer_id=1;
select first_name, last_name,store_id from sakila.customer where not store_id=1;

select * from emp.industry;