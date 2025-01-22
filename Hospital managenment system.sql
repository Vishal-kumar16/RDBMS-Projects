USE CMS
--CREATING TABLE FOR PATIENT
Create table patient
(
  Patient_id Int Primary key Not null,
  Name varchar(30) Not null,
  Disease Varchar(30) Not null,
  Address Varchar (30),
  Age Varchar (10) Not null,
  Gender Varchar (10) Not null,
  PhoneNumber Varchar (13) Not null,
  DOB Date Default null 
  )

  --INSERT QUERIES FOR PATIENT--
  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(101, 'Vishal', 'Myopia', '20', 'Male', '2563214562')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(102, 'Tanya', 'Malaria', '18', 'Female', '5214856325')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(103, 'Aryan', 'Sugar', '25', 'Male', '5632412578')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(104, 'Muskan', 'Fever', '19', 'Female', '4257896321')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(105, 'Aman', 'TB', '20', 'Male', '5241635241')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(106, 'Chandani', 'Headache', '23', 'Female', '5841369842')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(107, 'Atul', 'Allergies', '24', 'Male', '5285147596')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(108, 'Pinky', 'Diarrhea', '21', 'Female', '2569441359')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(109, 'Vishal', 'Stomach aches', '26', 'Male', '9521478536')

  Insert into patient(Patient_id, Name, Disease, Age, Gender, PhoneNumber)
  Values(110, 'Tina', 'Myopia', '20', 'Female', '9113326518')

  --This table is used for see all the data present in table --
   select * from patient

   --CREATING TABLE FOR DOCTOR--
Create table doctor
( 
   Doctor_id int primary key not null,
   Doctor_name Varchar(30) not null,
   Department Varchar(15) not null,
   )
--Insert queries for Doctor table--
Insert into doctor(Doctor_id,Doctor_name,Department)
Values(201,'visawajeet prasad', 'Dentist')

Insert into doctor(Doctor_id,Doctor_name,Department)
Values(202,'SK Goyal', 'Radiologist')

Insert into doctor(Doctor_id,Doctor_name,Department)
Values(203,'TK Sinha', 'Neurologist')

Insert into doctor(Doctor_id,Doctor_name,Department)
Values(204,'VK Gupta', 'psychologist')

Insert into doctor(Doctor_id,Doctor_name,Department)
Values(205,'AK Narayn', 'Surgeon')

Select*from doctor

--CREATING TABLE FOR ROOM--
CREATE TABLE ROOM (
  Room_id INT PRIMARY KEY,
  Room_no VARCHAR(10) NOT NULL,
  Room_type VARCHAR(20) NOT NULL,
  charges DECIMAL(10, 2) NOT NULL
)

--Insert Queries for Room--
Insert into ROOM(Room_id,Room_no,Room_type,charges)
Values(301, 11, 'Reserved', 700)

Insert into ROOM(Room_id,Room_no,Room_type,charges)
Values(302, 12, 'Not reserved', 700)

Insert into ROOM(Room_id,Room_no,Room_type,charges)
Values(303, 13, 'Not Reserved', 700)

Insert into ROOM(Room_id,Room_no,Room_type,charges)
Values(304, 14, 'Reserved', 700)

Insert into ROOM(Room_id,Room_no,Room_type,charges)
Values(305, 15, 'Reserved', 700)


Insert into ROOM(Room_id,Room_no,Room_type,charges)
Values(301, 11, 'Reserved', 700)

Insert into ROOM(Room_id,Room_no,Room_type,charges)
Values(301, 11, 'Reserved', 700)

Select * from Room

--CREATING TABLE FOR INPATIENT--
CREATE TABLE INPATIENT (
  inpatient_id INT PRIMARY KEY,
  patient_id INT NOT NULL,
  room_id INT NOT NULL,
  Date_of_admission DATE Default getdate(),
  FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id),
  FOREIGN KEY (room_id) REFERENCES ROOM(room_id)
)


--Insert Queries For Inpatient--

INSERT INTO INPATIENT (inpatient_id, patient_id, room_id)
VALUES (401, 101, 301);

INSERT INTO INPATIENT (inpatient_id, patient_id, room_id)
VALUES (402, 102, 302);

INSERT INTO INPATIENT (inpatient_id, patient_id, room_id)
VALUES (403, 103, 303);

INSERT INTO INPATIENT (inpatient_id, patient_id, room_id)
VALUES (404, 104, 304);

INSERT INTO INPATIENT (inpatient_id, patient_id, room_id)
VALUES (405, 105, 305);
 
 select * from INPATIENT

 --CREATING TABLE FOR OUTPATIENT--
 CREATE TABLE OUTPATIENT (
  outpatient_id INT PRIMARY KEY,
  patient_id INT NOT NULL,
  visit_date DATE NOT NULL,
  FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id)
);

--INSERT OUERIES FOR OUTPATIENT TABLE--
Insert into OUTPATIENT(outpatient_id, patient_id, visit_date)
Values(601, 102, '12-06-24')

Insert into OUTPATIENT(outpatient_id, patient_id, visit_date)
Values(602, 104, '12-07-24')

select * from OUTPATIENT

--Drop table i used for delete the table--
Drop table OUTPATIENT

--Creating table for Lab report--
CREATE TABLE LAB_REPORT (
  lab_no INT PRIMARY KEY,
  patient_id INT NOT NULL,
  Amount VARCHAR(50) NOT NULL,
  Category Varchar (20) Null,
  report_date DATE NOT NULL,
  FOREIGN KEY (patient_id) REFERENCES PATIENT(patient_id)
);

--Insert into Lab report--
INSERT INTO LAB_REPORT (lab_no, patient_id, Amount, Category, report_date)
VALUES (701, 106, '850', 'Sugar test', '2023-07-25');

INSERT INTO LAB_REPORT (lab_no, patient_id, Amount, Category, report_date)
VALUES (702, 109, '750', 'Diaries test', '2023-09-19');

INSERT INTO LAB_REPORT (lab_no, patient_id, Amount, Category, report_date)
VALUES (703, 108, '550', 'Myopia test', '2023-05-15');

select * from LAB_REPORT

--Check and see all the table with data--
select*from doctor
select*from INPATIENT
select * from OUTPATIENT
select * from LAB_REPORT
select * from patient
select * from ROOM

--Now we are going to be operation in making table--

--1. If I see patient table
select * from patient

--2. If I see Doctor table
select * from doctor

--3. If i see rooms table
select * from ROOM

--4. If i see inpatient table 
select * from INPATIENT

--5. If i see outpatient table
select * from Outpatient

--6. If i see lab report
select * from LAB_REPORT

--7. Select patient with myopia disease
select*from patient 
where Disease='myopia'

--8. Select doctor in the dentist departements
select * from doctor
where Department = 'dentist'

--9. Select room that are reserved 
Select * from ROOM
where ROOM_type = 'reserved'

--10. Select inpatient with their room details
Select i.*,r.room_no,r.room_type
from INPATIENT i
join ROOM r on i.room_id = r.Room_id

--11. Select outpatient visit from patient id 102
select * from outpatient 
where patient_id = 102

--12. Select lab report for patient id 102
select * from LAB_REPORT
where patient_id = 106

--13. Count male patient
select count(*) from patient
where gender = 'male'

--14. Count Female patient
select count(*) from patient
where gender = 'Female'

--15. Sum of charges of all room
select sum(charges) from ROOM

--16. Average age of patient
   
   --In this query i change data type varchar into int 
   --becouse age is varchar thats why we cannot find average of age

   Select avg (cast(age as int )) from patient

--17. List of unique disease(distinct)
select distinct disease from patient

-- 18. List if distinct room type
select distinct room_type from ROOM

--19. --Total number of patient admitted in room 301
select count(*) from INPATIENT where room_id = 301

--20. List of patient older than 22 years
select * from patient 
where cast(age as int ) >22

--21. list of patient admitted before today 
select * from INPATIENT where Date_of_admission < getdate()

--22. List of patient with no room assigned (outpatient)
select p.* from patient p
left join INPATIENT i on p.Patient_id = i.patient_id
where i.patient_id is null

--23. List of room charges with greater than 800
select * from room where charges>500

--24 list of patient whose name start with v
select * from patient where name like 'v%'

select * from patient where name like '%s%'

--25. list of patient whose disease with 'M'
select * from patient where disease like 'm%'

--26. list of report ordered by date (ascending)
select * from lab_report
order by report_date asc

--27.  list of report ordered by date (descending)
select * from lab_report
order by report_date desc

--28. sum of charges aboved room
select sum(charges) from ROOM
where Room_type='reserved'

--29. Average amount of lab report
select avg(cast(amount as decimal(10,2))) from LAB_REPORT

--30. Maximum age among patient
select max(cast(age as int)) from patient

--31. Minimum charges among room
select min(charges) from ROOM

--32. update patient 'vishal' with patient id 101 to have a new disease
update patient set Disease = 'hypermytropia' 
where Patient_id = 101

--33. update room charges for room_id 302 to 850
update room set charges = 850
where Room_id = 302

--34. list of outpatient with their visit dates and patient name
select o.*, p.name
from outpatient o 
join patient p on o.patient_id = p.patient_id

--35. -- count patient group by disease
select disease, count(*) as 'total patient'
from patient
group by Disease

--36. sum of charges for reserved and not reserved room ( group by room type)
select room_type, sum(charges) as 'total charges'
from room 
group by Room_type

--37 average age of group by gebder 
select gender, avg(cast( age as int)) as 'avg age'
from patient
group by gender

--38 list of patient with their assigned room ( in patient) order by patient_id
select p.*, r.room_no, r.room_type
from patient p
join inpatient i on p.patient_id = i.patient_id
join room r on i.room_id = r.Room_id
order by p.Patient_id

--39. list of rooms and their assigned patient (inpatients) sorted by room number
 select r.*, p.name as 'patient_name'
 from room r 
 left join INPATIENT i on r.room_id = i.room_id
 left join patient p  on i.patient_id = p.Patient_id
 order by r.Room_no

 --40. 
 SELECT 
    p.Patient_id,
    p.Name AS Patient_Name,
    p.Disease,
    p.Age,
    p.Gender,
    p.PhoneNumber,
    r.Room_id,
    r.Room_no,
    r.Room_type,
    r.charges,
    i.Date_of_admission
FROM 
    INPATIENT i
INNER JOIN 
    PATIENT p ON i.patient_id = p.Patient_id
INNER JOIN 
    ROOM r ON i.room_id = r.Room_id
ORDER BY 
    i.Date_of_admission DESC;











