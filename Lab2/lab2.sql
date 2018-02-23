
-- execute lab 1
@"C:\Users\bradr\Database Labs\Lab1\DefaultScripts\lab1.sql";


SET DEFINE OFF

CREATE TABLE incident_stage ( INCIDENT_DATE VARCHAR2(26),
TYPE VARCHAR2(8),
EMPLOYEE VARCHAR2(4),
VEHICLE VARCHAR2(7),
NOTES VARCHAR2(12));



INSERT INTO incident_stage (INCIDENT_DATE, TYPE, EMPLOYEE, VEHICLE, NOTES) 
VALUES ('06-Dec-2016', 'Speeding', 'Judy', 'Big Dog', 'speed trap');

INSERT INTO incident_stage (INCIDENT_DATE, TYPE, EMPLOYEE, VEHICLE, NOTES) 
VALUES ('22-Dec-2016', 'Speeding', 'Troy', 'Mad Max', 'holiday rush');

-- Import Data into table incident_stage from file C:\Users\bradr\Database Labs\Lab2\Incidents.xlsx . Task successful and sent to worksheet.

--#5 
select instg.incident_date
, instg.type
, emp.employee_id
, vh.vehicle_id
, instg.notes
from incident_stage instg
join employee emp on instg.employee = emp.FIRST_NAME
join vehicle vh on instg.vehicle = vh.NAME;


--#7 
insert into incident
select incident_s1.nextval
, instg.incident_date
, instg.type
, emp.employee_id
, vh.vehicle_id
, instg.NOTES
from incident_stage instg
join employee emp on instg.employee = emp.FIRST_NAME
join vehicle vh on instg.vehicle = vh.NAME;


--#8
SET DEFINE OFF

CREATE TABLE haul_stage ( EMPLOYEE VARCHAR2(26),
BEGIN_CITY VARCHAR2(3),
END_CITY VARCHAR2(3),
CLIENT VARCHAR2(21),
BEGIN_DATE DATE,
END_DATE DATE,
VEHICLE VARCHAR2(10));



INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SLC', 'SFO', 'Oregon Lumber Inc', '11-Dec-2016', '13-Dec-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SLC', 'SFO', 'Oregon Lumber Inc', '20-Jan-2017', '23-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'SFO', 'Washington Apples Inc', '27-Dec-2016', '28-Dec-2016', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SEA', 'SFO', 'Oregon Lumber Inc', '28-Dec-2016', '31-Dec-2016', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SFO', 'SLC', 'Washington Apples Inc', '14-Jan-2017', '16-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'BOI', 'SEA', 'Oregon Lumber Inc', '22-Nov-2016', '23-Nov-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SEA', 'SLC', 'Idaho Potatoes Inc', '12-Jan-2017', '14-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'SFO', 'Oregon Lumber Inc', '27-Dec-2016', '30-Dec-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SFO', 'SLC', 'Washington Apples Inc', '23-Nov-2016', '25-Nov-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SLC', 'SEA', 'Oregon Lumber Inc', '19-Jan-2017', '20-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'BOI', 'Oregon Lumber Inc', '12-Feb-2017', '15-Feb-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SLC', 'SEA', 'Washington Apples Inc', '27-Jan-2017', '29-Jan-2017', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'SLC', 'Washington Apples Inc', '29-Nov-2016', '02-Dec-2016', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SEA', 'SFO', 'Washington Apples Inc', '16-Nov-2016', '17-Nov-2016', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SLC', 'SEA', 'Idaho Potatoes Inc', '15-Feb-2017', '16-Feb-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SFO', 'BOI', 'Oregon Lumber Inc', '13-Feb-2017', '14-Feb-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SFO', 'BOI', 'Oregon Lumber Inc', '14-Feb-2017', '17-Feb-2017', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SFO', 'SLC', 'Oregon Lumber Inc', '27-Dec-2016', '29-Dec-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SLC', 'SEA', 'Washington Apples Inc', '13-Jan-2017', '15-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SFO', 'SEA', 'Idaho Potatoes Inc', '05-Jan-2017', '06-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SLC', 'BOI', 'Oregon Lumber Inc', '29-Jan-2017', '30-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SEA', 'SFO', 'Idaho Potatoes Inc', '26-Nov-2016', '28-Nov-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'SLC', 'Oregon Lumber Inc', '20-Dec-2016', '22-Dec-2016', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'BOI', 'SFO', 'Idaho Potatoes Inc', '10-Jan-2017', '13-Jan-2017', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'BOI', 'Washington Apples Inc', '30-Nov-2016', '03-Dec-2016', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SFO', 'BOI', 'Idaho Potatoes Inc', '07-Jan-2017', '10-Jan-2017', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SEA', 'BOI', 'Idaho Potatoes Inc', '12-Dec-2016', '14-Dec-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SFO', 'SLC', 'Idaho Potatoes Inc', '08-Dec-2016', '10-Dec-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SLC', 'SFO', 'Oregon Lumber Inc', '25-Jan-2017', '28-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SLC', 'SFO', 'Oregon Lumber Inc', '30-Nov-2016', '03-Dec-2016', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'BOI', 'SEA', 'Washington Apples Inc', '26-Dec-2016', '29-Dec-2016', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SLC', 'SEA', 'Washington Apples Inc', '10-Jan-2017', '11-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SLC', 'SFO', 'Idaho Potatoes Inc', '20-Nov-2016', '22-Nov-2016', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SFO', 'SEA', 'Idaho Potatoes Inc', '28-Dec-2016', '30-Dec-2016', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SLC', 'SFO', 'Washington Apples Inc', '11-Dec-2016', '12-Dec-2016', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SFO', 'BOI', 'Oregon Lumber Inc', '11-Jan-2017', '13-Jan-2017', 'Mad Max');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'SFO', 'Washington Apples Inc', '24-Nov-2016', '26-Nov-2016', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'BOI', 'Idaho Potatoes Inc', '08-Jan-2017', '10-Jan-2017', 'Classy Cat');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'BOI', 'SFO', 'Idaho Potatoes Inc', '17-Nov-2016', '20-Nov-2016', 'Big Dog');

INSERT INTO haul_stage (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SEA', 'SFO', 'Oregon Lumber Inc', '05-Dec-2016', '07-Dec-2016', 'Classy Cat');

-- Import Data into table haul_stage from file C:\Users\bradr\Database Labs\Lab2\Haul.xlsx . Task successful and sent to worksheet.


-- #11 confirm incendent_stage has 40 rows -- 
select * from haul_stage; 

-- #12 
select emp.employee_id
, c1.city_id
, c2.city_id
, client.client_id
, begin_date
, end_date
, vehicle.vehicle_id
from haul_stage 
join employee emp on employee = emp.FIRST_NAME
join city c1 on haul_stage.BEGIN_CITY = c1.CODE
join city c2 on haul_stage.END_CITY = c2.code
join client on haul_stage.CLIENT = client.NAME
join vehicle on haul_stage.VEHICLE = vehicle.NAME;

--#13 
insert into haul
select haul_s1.nextval
, emp.employee_id
, c1.city_id
, c2.city_id
, client.CLIENT_ID
, begin_date
, end_date
, vehicle.VEHICLE_ID
from haul_stage 
join employee emp on employee = emp.FIRST_NAME
join city c1 on haul_stage.BEGIN_CITY = c1.CODE
join city c2 on haul_stage.END_CITY = c2.code
join client on haul_stage.CLIENT = client.NAME
join vehicle on haul_stage.VEHICLE = vehicle.NAME;

--#14
SET DEFINE OFF

CREATE TABLE haul_stage2 ( EMPLOYEE VARCHAR2(26),
BEGIN_CITY VARCHAR2(3),
END_CITY VARCHAR2(3),
CLIENT VARCHAR2(21),
BEGIN_DATE DATE,
END_DATE DATE,
VEHICLE VARCHAR2(10));



INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SLC', 'SFO', 'Oregon Lumber Inc', '11-Dec-2016', '13-Dec-2016', 'Classy Cat');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SLC', 'SFO', 'Oregon Lumber Inc', '20-Jan-2017', '23-Jan-2017', 'Mad Max');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'SEA', 'SFO', 'Washington Apples Inc', '27-Dec-2016', '28-Dec-2016', 'Big Dog');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SEA', 'SFO', 'Oregon Lumber Inc', '28-Dec-2016', '31-Dec-2016', 'Big Dog');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SFO', 'SLC', 'Washington Apples Inc', '14-Jan-2017', '16-Jan-2017', 'Mad Max');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'BOI', 'SLC', 'Oregon Lumber Inc', '22-Nov-2016', '24-Nov-2016', 'Classy Cat');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'SFO', 'SLC', 'Idaho Potatoes Inc', '12-Jan-2017', '13-Jan-2017', 'Mad Max');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Judy', 'BOI', 'SFO', 'Oregon Lumber Inc', '28-Dec-2016', '30-Dec-2016', 'Classy Cat');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Matt', 'BOI', 'SLC', 'Washington Apples Inc', '24-Nov-2016', '25-Nov-2016', 'Classy Cat');

INSERT INTO haul_stage2 (EMPLOYEE, BEGIN_CITY, END_CITY, CLIENT, BEGIN_DATE, END_DATE, VEHICLE) 
VALUES ('Troy', 'SLC', 'SEA', 'Oregon Lumber Inc', '09-Jan-2017', '11-Jan-2017', 'Mad Max');

-- Import Data into table haul_stage2 from file C:\Users\bradr\Database Labs\Lab2\Haul2.xlsx . Task successful and sent to worksheet.


--15
MERGE INTO haul target
USING (
  select emp.employee_id as employee_id
, c1.city_id as begin_city_id
, c2.city_id as end_city_id
, client.CLIENT_ID as client_id
, begin_date
, end_date
, vehicle.vehicle_id as vehicle_id
  from haul_stage2
  join employee emp on employee = emp.first_name
  join city c1 on haul_stage2.begin_city = c1.code
  join city c2 on haul_stage2.end_city = c2.code
  join client on haul_stage2.client = client.name
  join vehicle on haul_stage2.vehicle = vehicle.name) source
ON (target.employee_id = source.employee_id AND
    target.begin_city_id = source.begin_city_id AND 
    target.end_city_id = source.end_city_id AND
    target.begin_date = source.begin_date AND 
    target.end_date = source.end_date)
WHEN NOT MATCHED THEN INSERT ( 
  target.haul_id
, target.employee_id
, target.begin_city_id
, target.end_city_id
, target.client_id
, target.begin_date
, target.end_date
, target.vehicle_id)
VALUES ( 
  haul_s1.nextval
, source.employee_id
, source.begin_city_id
, source.end_city_id
, source.client_id
, source.begin_date
, source.end_date
, source.vehicle_id);


--16

SELECT COUNT(*)
FROM haul;

SELECT e.first_name, COUNT(*) AS Cnt
FROM haul h JOIN employee e
  ON h.employee_id = e.employee_id
GROUP BY e.first_name
ORDER BY first_name;

SELECT v.name, COUNT(*) AS Cnt
FROM haul h JOIN vehicle v
  ON h.vehicle_id = v.vehicle_id
GROUP BY v.name
ORDER BY v.name;

SELECT bc.code, COUNT(*) AS Cnt
FROM haul h JOIN city bc
  ON h.begin_city_id = bc.city_id
GROUP BY bc.code
ORDER BY bc.code;


SELECT c.name, COUNT(*) AS Cnt
FROM haul h JOIN client c
  ON h.client_id = c.client_id
GROUP BY c.name
ORDER BY c.name;




