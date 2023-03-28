create table Plane_Type
(
	ModelNumber int Not Null,
	Capacity int,
	TWeight int,
	Primary Key (ModelNumber)
)

create table Hangar
(
	HangarNumber int Not NUll,
	Capacity int,
	HLocation varchar(30),
	Primary Key (HangarNumber)
)


create table Airplane
(
	REG_NUM int NOT NULL,
	OF_TYPE int,
	STORED_IN INT,
	FOREIGN KEY (OF_TYPE) REFERENCES Plane_Type(ModelNumber),
	FOREIGN KEY (Stored_in) REFERENCES Hangar(HangarNumber),
	Primary key (REG_NUM)
)

create table Corporation
(
	Name varchar(30) NOT NULL,
	address varchar(100),
	Phone_Num varchar(15),
	Primary key (name)
)
create table Person
(
	SSN int NOT NULL,
	LName varchar(30) Not NUll,
	Address varchar(100),
	PHone_NUM varchar(15),
	Primary key (ssn)
)


create table Pilot
(
	SSN int,
	LIC_NUM int NOT NULL,
	CAN_FLY int,
	Primary key(LIC_NUM),
	FOREIGN KEY (SSN) REFERENCES PERSON(SSN),
	--FOREIGN KEY (CAN_FLY) REFERENCES PLANE_TYPE(MODELNUMBER)
)

create table EMP
(
	SSN int not null,
	Salary int,
	Shift_time int,
	H_Worked int,
	WORKS_ON int,
	FOREIGN KEY (SSN) REFERENCES PERSON(SSN),
	FOREIGN KEY (WORKS_ON) REFERENCES PLANE_TYPE(MODELNUMBER)
)


create table Sevices
(
	SNUM int Not NULL,
	Sdate DATE,
	TimeServiced int,
	Work_CODE int,
	working bit,
	ANUM int,
	PRimary key (SNUM),
	FOreign key (ANUM) REFERENCES AIRPLANE(REG_NUM)
)



create table Owns
(
	Plane_num int,
	Owner_Name varchar(30),
	Owner_SSN int,
	Pdate date,
	FOREIGN KEY (PLANE_NUM) REFERENCES AIRPLANE(REG_NUM),
	FOREIGN KEY (OWNER_NAME) REFERENCES CORPORATION (NAME),
	FOREIGN KEY (OWNER_SSN) REFERENCES person(ssn)
)

create table Maintains
(
	ESSN int,
	SERVICE_NUM int,
	FOREIGN KEY (ESSN) REFERENCES PERson(SSN),
	FOREIGN KEY (SERVICE_NUM) REFERENCES SEvices(SNUM)
)

create table Can_Fly
(
	Plic int,
	PType int,
	foreign key (Plic) references Pilot(LIC_NUM),
	Foreign Key (PTYPE) references Plane_Type(ModelNUmber)

)

--1
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(1,3,'Hunza')
--2
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(2,3,'Hunza')
--3
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(3,1,'Islamabad')
--4
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(4,3,'Multan')
--5
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(5,2,'Skardu')
--6
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(6,4,'Multan')
--7
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(7,1,'Islamabad')
--8
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(8,3,'Quetta')
--9
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(9,5,'Islamabad')
--10
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(10,2,'Multan')
--11
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(11,3,'Multan')
--12
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(12,1,'Rawalpindi')
--13
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(13,5,'Multan')
--14
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(14,2,'Rawalpindi')
--15
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(15,1,'Islamabad')
--16
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(16,5,'Lahore')
--17
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(17,3,'Karachi')
--18
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(18,6,'Karachi')
--19
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(19,3,'Quetta')
--20
insert into Hangar
(HangarNumber,Capacity,HLocation)
values
(20,4,'Rawalpindi')

select*
from Hangar


--1
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(15,55,3002)
--2
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(16,98,3831)
--3
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(17,101,2248)
--4
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(18,60,2407)
--5
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(19,245,2558)
--6
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(20,79,3285)
--7
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(21,219,2063)
--8
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(22,187,3093)
--9
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(23,68,3823)
--10
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(24,108,2351)
--11
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(25,137,2341)
--12
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(26,84,3604)
--13
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(27,68,2639)
--14
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(28,215,3733)
--15
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(29,59,2548)
--16
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(30,234,3460)
--17
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(31,240,3299)
--18
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(32,212,2180)
--19
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(33,65,2735)
--20
insert Plane_Type
(ModelNumber,Capacity,TWeight)
values
(34,172,3025)

select*
from Plane_Type

--1
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(42,22,13)
--2
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(44,22,19)
--3
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(45,24,1)
--4
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(446,26,3)
--5
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(478,33,3)
--6
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(987,28,16)
--7
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(222,34,16)
--8
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(3335,19,16)
--9
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(444,25,1)
--10
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(447,34,1)
--11
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(756,26,16)
--12
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(456,32,15)
--13
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(198,32,15)
--14
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(486,25,13)
--15
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(289,17,11)
--16
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(675,30,19)
--17
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(126,30,7)
--18
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(147,15,12)
--19
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(989,25,11)
--20
insert into Airplane
(REG_NUM,OF_TYPE,STORED_IN)
values
(747,24,5)

select*
from Airplane

--1
insert into Corporation
(Name,address,Phone_Num)
values
('Air Blue','Lahore','0361-1991600')
--2
insert into Corporation
(Name,address,Phone_Num)
values
('AIRSIAL','Skardu','0301-9877239')
--3
insert into Corporation
(Name,address,Phone_Num)
values
('PIA','Karachi','0391-2081081')
--4
insert into Corporation
(Name,address,Phone_Num)
values
('Serene','Quetta','0355-2846204')
--5
insert into Corporation
(Name,address,Phone_Num)
values
('Fly Emirates','Hunza','0313-2242191')
--6
insert into Corporation
(Name,address,Phone_Num)
values
('Oman Air','Karachi','0307-2692821')
--7
insert into Corporation
(Name,address,Phone_Num)
values
('Gulf Air','Rawalpindi','0323-2878933')
--8
insert into Corporation
(Name,address,Phone_Num)
values
('Qatar Airways','Rawalpindi','0306-3517303')
--9
insert into Corporation
(Name,address,Phone_Num)
values
('Etihad','Rawalpindi','0353-9480936')
--10
insert into Corporation
(Name,address,Phone_Num)
values
('Iran Air','Skardu','0369-4009623')
--11
insert into Corporation
(Name,address,Phone_Num)
values
('Air China','Karachi','0324-3434541')
--12
insert into Corporation
(Name,address,Phone_Num)
values
('British Airways','Islamabad','0317-3190707')
--13
insert into Corporation
(Name,address,Phone_Num)
values
('MCB','Rawalpindi','0389-8753177')
--14
insert into Corporation
(Name,address,Phone_Num)
values
('Askari','Skardu','0388-3679812')
--15
insert into Corporation
(Name,address,Phone_Num)
values
('Habib','Rawalpindi','0332-7752468')
--16
insert into Corporation
(Name,address,Phone_Num)
values
('Allied','Islamabad','0357-4692711')
--17
insert into Corporation
(Name,address,Phone_Num)
values
('BOP','Hunza','0341-7809318')
--18
insert into Corporation
(Name,address,Phone_Num)
values
('Jazera Airways','Hunza','0378-9388759')
--19
insert into Corporation
(Name,address,Phone_Num)
values
('Salam Air','Rawalpindi','0356-7806329')
--20
insert into Corporation
(Name,address,Phone_Num)
values
('Fly Hannan','Hunza','0365-1056661')

select *
from Corporation


--1
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(12,'Khan','Islamabad','0324-7816656')
--2
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(14,'Ali','Lahore','0397-5532254')
--3
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(16,'Hussain','Skardu','0381-9719564')
--4
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(18,'Ahmad','Islamabad','0364-9726994')
--5
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(20,'Muhammed','Quetta','0323-4705741')
--6
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(22,'Khan','Skardu','0369-4106724')
--7
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(24,'Shah','Skardu','0364-8594617')
--8
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(26,'Bibi','Karachi','0347-1065068')
--9
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(28,'Ahmed','Hunza','0375-5376463')
--10
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(30,'Iqbal','Skardu','0304-4319723')
--11
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(32,'Ullah','Skardu','0327-7476441')
--12
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(34,'Din','Multan','0331-7823732')
--13
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(36,'Nawaz','Rawalpindi','0374-8797251')
--14
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(38,'Akhtar','Hunza','0316-1360955')
--15
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(40,'Abbas','Karachi','0394-1758492')
--16
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(42,'Khan','Rawalpindi','0395-9618343')
--17
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(44,'Mehmood','Rawalpindi','0320-2496429')
--18
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(46,'Aslam','Rawalpindi','0342-5713305')
--19
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(48,'Gul','Skardu','0346-3759404')
--20
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(50,'Khan','Islamabad','0371-9308845')
--21
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(100,'Rehman','Islamabad','0307-5734161')
--22
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(99,'Khan','Hunza','0344-9554870')
--23
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(98,'Hassan','Quetta','0394-7838080')
--24
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(97,'Saleem','Quetta','0399-3354919')
--25
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(96,'Khan','Skardu','0380-3402985')
--26
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(95,'Faisal','Skardu','0307-1469903')
--27
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(94,'Mustafa','Islamabad','0330-3056095')
--28
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(93,'Naqvi','Hunza','0300-2148771')
--29
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(92,'Fawaz','Lahore','0364-6658700')
--30
insert into Person
(SSN,LName,Address,PHone_NUM)
values
(91,'Parveen','Skardu','0371-9970704')

select*
from Person


--1
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(12,720,31)
--2
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(16,728,27)
--3
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(20,762,24)
--4
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(24,784,30)
--5
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(26,754,22)
--6
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(30,719,24)
--7
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(34,744,24)
--8
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(38,759,25)
--9
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(42,783,21)
--10
insert into Pilot
(ssn,LIC_NUM,CAN_FLY)
values
(46,740,15)

select*
from Pilot

--1
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(14,2124,2,37,21)
--2
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(18,2521,2,40,15)
--3
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(22,2473,1,37,30)
--4
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(26,2966,2,42,25)
--5
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(30,2321,2,35,21)
--6
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(34,2850,2,37,24)
--7
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(38,2329,3,36,25)
--8
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(42,2799,2,43,23)
--9
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(46,2735,1,42,32)
--10
insert into EMP
(SSN,Salary,Shift_time,H_Worked,WORKS_ON)
values
(50,2807,1,41,24)

select*
from EMP

--1
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(1,'2023-01-02',9,6,0,44)
--2
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(2,'2022-09-09',14,15,0,45)
--3
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(3,'2023-01-16',9,12,0,446)
--4
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(4,'2022-10-05',10,16,0,478)
--5
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(5,'2023-01-19',9,17,0,987)
--6
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(6,'2022-07-09',7,11,0,222)
--7
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(7,'2023-01-20',7,20,1,3335)
--8
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(8,'2022-08-11',9,18,0,756)
--9
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(9,'2023-02-17',5,1,0,456)
--10
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(10,'2022-07-12',14,4,0,198)
--11
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(11,'2023-02-06',7,7,0,486)
--12
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(12,'2022-07-11',8,2,1,289)
--13
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(13,'2023-01-12',7,8,0,675)
--14
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(14,'2022-10-15',6,1,0,444)
--15
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(15,'2023-02-11',11,3,1,447)
--16
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(16,'2022-09-1',9,2,0,756)
--17
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(17,'2023-01-21',7,5,0,126)
--18
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(18,'2022-08-16',8,11,0,147)
--19
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(19,'2023-01-01',9,4,0,989)
--20
insert into Sevices
(SNUM,Sdate,TimeServiced,Work_CODE,working,ANUM)
values
(20,'2022-10-14',12,7,0,147)

select*
from Sevices

--1
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(42,NULL,100,'2023-01-06')
--2
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(44,'PIA',NULL,'2022-12-08')
--3
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(45,NULL,99,'2023-02-04')
--4
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(446,'Air China',NULL,'2022-09-07')
--5
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(478,NULL,98,'2023-10-01')
--6
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(987,'Oman Air',NULL,'2022-12-07')
--7
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(222,NULL,97,'2023-02-22')
--8
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(3335,'Habib',NULL,'2022-07-20')
--9
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(444,NULL,96,'2023-02-17')
--10
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(447,'Fly Hannan',NULL,'2022-10-09')
--11
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(756,NULL,95,'2023-06-02')
--12
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(456,'Air Blue',NULL,'2022-09-19')
--13
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(198,NULL,94,'2023-02-15')
--14
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(486,'Fly Hannan',NULL,'2022-11-07')
--15
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(289,NULL,93,'2023-02-02')
--16
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(675,'British Airways',NULL,'2022-09-12')
--17
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(126,NULL,92,'2023-09-01')
--18
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(147,'Oman Air',NULL,'2022-10-18')
--19
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(989,NULL,91,'2023-02-16')
--20
insert into Owns
(Plane_num,Owner_Name,Owner_SSN,Pdate)
values
(747,'Salam Air',NULL,'2022-09-08')

SELECT* 
FROM Owns

--1
insert into Maintains
(ESSN,SERVICE_NUM)
values
(14,20)
--2
insert into Maintains
(ESSN,SERVICE_NUM)
values
(18,19)
--3
insert into Maintains
(ESSN,SERVICE_NUM)
values
(22,18)
--4
insert into Maintains
(ESSN,SERVICE_NUM)
values
(26,17)
--5
insert into Maintains
(ESSN,SERVICE_NUM)
values
(14,16)
--6
insert into Maintains
(ESSN,SERVICE_NUM)
values
(18,15)
--7
insert into Maintains
(ESSN,SERVICE_NUM)
values
(22,14)
--8
insert into Maintains
(ESSN,SERVICE_NUM)
values
(26,13)
--9
insert into Maintains
(ESSN,SERVICE_NUM)
values
(30,12)
--10
insert into Maintains
(ESSN,SERVICE_NUM)
values
(34,11)
--11
insert into Maintains
(ESSN,SERVICE_NUM)
values
(38,10)
--12
insert into Maintains
(ESSN,SERVICE_NUM)
values
(34,9)
--13
insert into Maintains
(ESSN,SERVICE_NUM)
values
(38,8)
--14
insert into Maintains
(ESSN,SERVICE_NUM)
values
(42,7)
--15
insert into Maintains
(ESSN,SERVICE_NUM)
values
(46,6)
--16
insert into Maintains
(ESSN,SERVICE_NUM)
values
(50,5)
--17
insert into Maintains
(ESSN,SERVICE_NUM)
values
(22,4)
--18
insert into Maintains
(ESSN,SERVICE_NUM)
values
(26,3)
--19
insert into Maintains
(ESSN,SERVICE_NUM)
values
(30,2)
--20
insert into Maintains
(ESSN,SERVICE_NUM)
values
(22,1)

select*
from Maintains

--1
insert into Can_Fly
(Plic,PType)
values
(720,31)
--2
insert into Can_Fly
(Plic,PType)
values
(728,27)
--3
insert into Can_Fly
(Plic,PType)
values
(762,24)
--4
insert into Can_Fly
(Plic,PType)
values
(784,30)
--5
insert into Can_Fly
(Plic,PType)
values
(754,22)
--6
insert into Can_Fly
(Plic,PType)
values
(719,24)
--7
insert into Can_Fly
(Plic,PType)
values
(744,24)
--8
insert into Can_Fly
(Plic,PType)
values
(739,25)
--9
insert into Can_Fly
(Plic,PType)
values
(783,21)
--10
insert into Can_Fly
(Plic,PType)
values
(740,15)
--11
insert into Can_Fly
(Plic,PType)
values
(740,31)
--12
insert into Can_Fly
(Plic,PType)
values
(720,21)
--13
insert into Can_Fly
(Plic,PType)
values
(720,22)
--14
insert into Can_Fly
(Plic,PType)
values
(754,30)
--15
insert into Can_Fly
(Plic,PType)
values
(719,15)

select*
from Can_Fly




--Q1
select REG_NUM
from Airplane
where REG_NUM not in (select ANUM from Sevices)

--Q2
select o1.Owner_Name,c1.address
from Corporation c1,Owns o1,Plane_Type t1, Airplane a1
where c1.Name = o1.Owner_Name AND t1.Capacity > 200 and o1.Plane_num = a1.REG_NUM and a1.OF_TYPE = t1.ModelNumber

--Q3
select AVG(salary)
from EMP
where Shift_time = 1

--Q4
select TOP 5*
from EMP e1
order by e1.H_Worked desc

--Q5
select REG_NUM
from Airplane,Sevices
where Sdate between '2023-1-16' AND '2023-1-23' AND REG_NUM = ANUM

--Q5(alt)


--Q6
select p1.LName,p1.PHone_NUM
from Owns o1,Person p1
where o1.Pdate between '2023-01-01' AND '2023-01-31' AND o1.Owner_SSN = p1.SSN

--Q7
select c1.Plic, count(c1.Plic)
from pilot p1, Can_Fly c1
where p1.LIC_NUM = c1.Plic
group by c1.Plic
having count(c1.Plic) >= 1


--Q8
select h1.HLocation, Capacity
from Hangar h1
where Capacity = (select max(capacity) from hangar)

--Q9
select o1.Plane_num, count(o1.Plane_num)
from owns o1, Corporation c1
where o1.Owner_Name = c1.Name
group by o1.Plane_num
having count(o1.Plane_num)>=1 


--Q10
select t1.ModelNumber,count(t1.ModelNumber), AVG(s1.TimeServiced)
from Plane_Type t1, Airplane a1, Sevices s1
where s1.ANUM = a1.REG_NUM AND a1.OF_TYPE = t1.ModelNumber
group by t1.ModelNumber
having count(t1.ModelNumber) >= 1



--Q12
select p1.LName, p1.PHone_NUM
from owns o1, Corporation c1, hangar h1, Airplane a1, Person p1
where o1.Owner_SSN = p1.SSN AND o1.Plane_num in (select o1.Plane_num from owns o1, Person p1, Corporation c1 where c1.Name = o1.Owner_Name ) AND a1.STORED_IN = h1.HangarNumber and h1.HLocation = p1.Address
group by p1.LName, p1.PHone_NUM

--Q13
select b1.LName
from Sevices s1, Pilot p1, Airplane a1, Person b1
where s1.working = 1 and a1.REG_NUM = s1.ANUM and a1.OF_TYPE = p1.CAN_FLY and b1.SSN = p1.SSN

--Q14
select p1.LName
from EMP e1, owns o1, Corporation c1, Maintains m1, Sevices s1, Person p1
where o1.Owner_Name = c1.Name and o1.Plane_num = s1.ANUM  and s1.SNUM = m1.SERVICE_NUM and m1.ESSN = p1.SSN
group by p1.LName
order by p1.LName

--Q15
select o1.Plane_num, o1.Owner_SSN
from owns o1, Sevices s1, Airplane a1
where o1.Owner_Name = null And o1.Plane_num in (select s1.ANUM from Sevices s1, Maintains m1, EMP e1 where s1.SNUM = m1.SERVICE_NUM AND m1.ESSN = e1.SSN and e1.Shift_time = 1)

--Q16
select p1.LName, p1.Address
from owns o1, Person p1, Corporation c1
where o1.Owner_SSN = p1.SSN AND o1.Plane_num in (select o1.Plane_num from owns o1, Person p1, Corporation c1 where c1.Name = o1.Owner_Name )
group by p1.LName,p1.Address

--Q17
select h1.HangarNumber, count(h1.HangarNumber)
from Hangar h1, Airplane a1
where h1.HangarNumber = a1.STORED_IN
group by h1.HangarNumber


--Q18
select t1.ModelNumber, count(t1.ModelNumber)
from Airplane a1, Plane_Type t1
where a1.OF_TYPE = t1.ModelNumber
group by t1.ModelNumber


--Q19
select s1.ANUM, count(s1.ANUM)
from Airplane a1, Sevices s1
where a1.REG_NUM = s1.ANUM
group by s1.ANUM
having count(s1.ANUM) >= 1

--Q20
select e1.Shift_time, avg(e1.Salary)
from EMP e1
group by e1.Shift_time
having count(e1.Shift_time) >= 1


--Q21
select o1.Owner_SSN, count(o1.Owner_SSN)
from Owns o1, Person p1
where o1.Owner_SSN = p1.SSN
group by o1.Owner_SSN
having count(o1.Owner_SSN) >= 1

--Q22
select c1.Plic, count(c1.Plic)
from pilot p1, Can_Fly c1
where p1.LIC_NUM = c1.Plic
group by c1.Plic
having count(c1.Plic) >= 1


--Q23
--Top 5 hangar location capacities
select Top 5*
from Hangar h1
order by h1.Capacity desc

--avg salary spent on each plane
select a1.REG_NUM, avg(s1.TimeServiced) average_time_spent
from Sevices s1, Airplane a1
where s1.ANUM = a1.REG_NUM
group by a1.REG_NUM
order by avg(s1.TimeServiced) desc

--avg hours worked on each shift
select e1.Shift_time, avg(e1.H_Worked) average_time_worked
from EMP e1
group by e1.Shift_time



-- top 5 capacity planes
select top 5 a1.REG_NUM, t1.Capacity
from Airplane a1, Plane_Type t1
order by t1.Capacity desc



