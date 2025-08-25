---Data CLeaning

---1. Deleting duplicates
-----checking for duplicates
with CTE as (select *, ROW_NUMBER() over(partition by transaction_id order by transaction_id) AS Rn
from Sales_store)
select * from CTE
where Rn>1


-----Deeleting Duplicates
with CTE as (select *, ROW_NUMBER() over(partition by transaction_id order by transaction_id) AS Rn
from Sales_store)
Delete from CTE
where Rn>1

---2. Checking for NUll
Select * from Sales_store
where transaction_id is NUll or 
 customer_id is NUll or 
 customer_name is NUll or 
 customer_age is NUll or 
 gender is NUll or 
 product_id is NUll or 
 product_name is NUll or 
 product_category is NUll or 
 quantity is NUll or 
 price is NUll or
 payment_mode is NUll or 
 purchase_date is NUll or 
 time_of_purchase is NUll or 
 status is NUll; 

 ----Treating NULL Values
 Delete from Sales_store where transaction_id is null

SELECT * 
FROM Sales_store
WHERE customer_name IN ('Ehsaan Ram', 'Damini Raju');

update Sales_store
set customer_id = 'CUST9494' where transaction_id = 'TXN977900'
update Sales_store
set customer_id = 'CUST1401' where transaction_id = 'TXN985663'


SELECT * 
FROM Sales_store
WHERE customer_id = 'CUST1003';

update Sales_store
set customer_name = 'Mahika Saini',  customer_age = 35, gender = 'Male'
where transaction_id = 'TXN432798'

---Gender column cleanup
select distinct gender
from Sales_store

update Sales_store
set gender ='M' where gender='Male'

update Sales_store
set gender ='F' where gender='Female'


---Payment mode column cleanup
select distinct payment_mode
from Sales_store

update Sales_store
set payment_mode ='Credit Card' where payment_mode ='CC'
