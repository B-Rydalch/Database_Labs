--@C:\Users\bradr\CIT225_salon_lab\cleanup_oracle.sql;
@"C:\Users\bradr\Database Labs\CIT225_salon_lab\create_salon.sql";
@"C:\Users\bradr\Database Labs\CIT225_salon_lab\salon_insert.sql";


-- Show the Name, Type and Price of items (products and services) purchased by each customer sorted by customer lastname
select customer.name as customer_name , product.type, product.name as product_name, product.price
from customer 
join tran on customer.customer_id = tran.customer_id
join tran_detail on tran.tran_id = tran_detail.TRAN_ID
join product  on tran_detail.product_id = product.product_id
order by customer.name desc;


-- Show the total spend of each customer sorted by spend descending
select customer.name, sum(tran_detail.amount_charged) as total_charged
from customer 
join tran on customer.customer_id = tran.CUSTOMER_ID
join tran_detail on tran.tran_id = tran_detail.TRAN_ID
group by customer.name
order by sum(tran_detail.amount_charged) desc;

-- Show the total revenue generated by each employee sorted by revenue descending
 select employee.name, sum(tran_detail.AMOUNT_CHARGED) as total_revenue
 from employee 
 join tran on employee.employee_id = tran.employee_id
 join TRAN_DETAIL on tran.TRAN_ID = TRAN_DETAIL.TRAN_ID
 group by employee.name
 order by sum(tran_detail.AMOUNT_CHARGED) desc;


-- Show each employee with their title, hire date, manager and manager title
select employee.name, employee.title, employee.hire_date, 
  (select e1.name 
  from employee e1
  where e1.employee_id = employee.manager_id) as manager_name, 
  (select e2.title 
  from employee e2
  where e2.employee_id = employee.manager_id) as manager_title
from employee;

-- Unnormalized Data
-- This was not found anywhere in Ilearn, not sure what to do from here. 