--Lab 3 

--3-1
@"C:\Users\bradr\Database Labs\Lab2\lab2.sql";

--3-2
select client.name as Client, count(haul_id) as Haul_Count
from haul
join client on haul.client_id = client.client_id
group by client.name
order by client.name asc;

--3-3
select  employee.first_name || ' ' || employee.last_name as driver
, vehicle.name as Truck, count(haul_id) as Haul_Count
from haul
join vehicle on haul.vehicle_id = vehicle.vehicle_id
join employee on HAUL.EMPLOYEE_ID = employee.employee_id
group by employee.first_name || ' ' || employee.LAST_NAME, vehicle.name 
order by driver, haul_count desc;

--3-4
select employee.first_name || ' ' || employee.last_name as Driver ,
sum(case when  vehicle.name  = 'Big Dog' 
  then  1 else 0 end) as "Big Dog",
sum(case when vehicle.name = 'Classy Cat'  
  then 1 else 0 end) as Classy_Cat,
sum(case when vehicle.name = 'Mad Max'
  then 1  else 0 end) as Mad_Max
From haul 
join employee on  employee.employee_id= haul.employee_id 
join vehicle on  vehicle.vehicle_id =haul.vehicle_id 
group by  employee.first_name || ' ' || employee.last_name
order by Driver desc;

--3-5
--a
insert into mileage 
select mileage_s1.nextval, city2_id, city1_id, miles from mileage;

--b
select employee.first_name || ' ' || employee.last_name as Driver, 
       sum(mileage.miles) as Total_Mileage
from haul
join employee on haul.employee_id = employee.employee_id
join mileage on haul.BEGIN_CITY_ID = mileage.city1_id and haul.end_city_id  = mileage.city2_id
group by employee.first_name || ' ' || employee.last_name;

--3-6
select employee.first_name || ' ' || employee.last_name as Driver, 
to_char(sum (case
      when haul.begin_date between '01-Nov-16' and '01-Dec-16' 
      then mileage.miles else 0 end),'9,999,999') as Nov,
to_char(sum (case
      when haul.begin_date between '01-Dec-16' and '31-Dec-16'
      then mileage.miles else 0 end),'9,999,999') as Dec,
to_char(sum (case 
    when haul.begin_date between '01-Jan-17' and '30-Jan-17' 
      then mileage.miles else 0 end),'9,999,999') as Jan, 
to_char(sum (case 
    when haul.begin_date between '01-Feb-17' and '28-Feb-17' 
      then mileage.miles else 0 end),'9,999,999') as Feb,
to_char(sum(mileage.miles),'9,999,999') as "Total Mileage"
from haul
join mileage on haul.begin_city_id = mileage.city1_id and 
    haul.end_city_id = mileage.city2_id
join employee on  employee.employee_id= haul.employee_id 
group by  employee.first_name || ' ' || employee.last_name
order by Driver desc; 

--3-7
select employee.first_name || ' ' || employee.last_name as Driver, 
to_char(sum (case
      when haul.begin_date between '01-Nov-16' and '01-Dec-16' 
      then mileage.miles else 0 end),'9,999,999') as Nov,
to_char(sum  (case
      when extract(month from haul.begin_date) = 11
      then rate * mileage.miles else 0 end), '$9,999,999.99') as "Nov Gross Revenue",
to_char(sum (case
      when haul.begin_date between '01-Dec-16' and '31-Dec-16'
      then mileage.miles else 0 end),'9,999,999') as Dec,
to_char(sum  (case
      when extract(month from haul.begin_date) = 12
      then rate * mileage.miles else 0 end), '$9,999,999.99') as "Dec Gross Revenue",
to_char(sum (case 
    when haul.begin_date between '01-Jan-17' and '30-Jan-17' 
      then mileage.miles else 0 end),'9,999,999') as Jan,
to_char(sum  (case
      when extract(month from haul.begin_date) = 1
      then rate * mileage.miles else 0 end), '$9,999,999.99') as "Jan Gross Revenue",
to_char(sum (case 
    when haul.begin_date between '01-Feb-17' and '28-Feb-17' 
      then mileage.miles else 0 end),'9,999,999') as Feb,
to_char(sum  (case
      when extract(month from haul.begin_date) = 2
      then rate * mileage.miles else 0 end), '$9,999,999.99') as "Feb Gross Revenue",
to_char(sum(mileage.miles),'9,999,999') as "Total Mileage",
to_char(sum (rate * mileage.miles), '$9,999,999.99') as "Total Gross Revenue"
from haul
join mileage on haul.begin_city_id = mileage.city1_id and 
     haul.end_city_id = mileage.city2_id
join employee on  employee.employee_id= haul.employee_id 
join vehicle on vehicle.vehicle_id = haul.vehicle_id
join season on season.month = extract(month from haul.begin_date)
join rate on season.season = rate.season and rate.vehicle_type = vehicle.type
group by  employee.first_name || ' ' || employee.last_name
order by Driver desc;

