use primeinstitutes;
create table BiodataTable(StaffID int primary key not null, StaffName varchar(40) not null, Gender varchar(7) not null, Date_of_Birth date not null, 
Contact_information varchar(12) not null,  Email varchar(30) not null, Phone varchar(13) not null);
create table AcademicTable(StaffID int primary key not null, Position varchar(16) not null, Department varchar(15) not null, Academic_Background varchar(30),
 Degrees varchar(6)not null, Institutions varchar(30) not null, Graduation_Dates date not null, Teaching_Experience varchar(8) not null);
 create table Other_Details_Table(StaffID int primary key not null, Professional_Memberships varchar(30) not null, 
 Research_Interests varchar(40) not null, Publications varchar(19) not null);
 # DML: DATA MANIPULATION LANGUAGE
 #DDL: DATA DEFINITION LANGUAGE
 #mysql queries: insert, select, update, delete
 alter table biodatatable modify column Contact_information text not null;
 alter table biodatatable modify column Phone varchar(20) not null;
 insert into biodatatable(StaffID,StaffName,Gender,Date_of_Birth,Contact_information,Email,Phone)values
 (1,'Professor Okoro James','Male','1960-10-25','No 25 HighwayStreet AMAC',
 'okorowane101@yahoo.com','+2347085652524'),
 (2,'Professor Akin Henry','Male','1970-02-10','No 50 BalaBlue Street AMAC',
 'akinwanshenry@gmail.com','+2347093564712'),
 (3,'Mrs Faith Akpan','Female','1985-04-25','No 30 	BobStreet AMAC',
 'faithdeboss@gmail.com','+2348076498302'),
 (4,'Professor Lawal Kunle','Male','1960-03-27','No 32 HighwayStreet AMAC',
 'Lawalkunles@yahoo.com','+2347098536483'),
 (5,'Professor Okoro James','Male','1965-12-12','No 45 HighwayStreet AMAC',
 'ameojanme@yahoo.com','+2347076435494');
 select * from biodatatable;
 update biodatatable set Date_of_Birth='1967-02-10' where StaffID=2;
 select* from biodatatable;
 delete from biodatatable where StaffID=5;
 select * from biodatatable;
 insert into biodatatable(StaffID,StaffName,Gender,Date_of_Birth,Contact_information,Email,Phone) values
 (5,'Professor Trust Michael','Male','1960-10-25','No 25 HighwayStreet AMAC',
 'michael45@yahoo.com','+23470893452318'),
 (6,'Professor Hayatu Moses','Male','1989-10-13','No 50 Broadway Street AMAC',
 'hayatu70@gmail.com','+2347065630907'),
 (7,'Mrs Hephzibah Peters','Female','1985-09-16','No 30 	Broadway Street AMAC',
 'Zee_bah@gmail.com','+2348034567891'),
 (8,'Professor Marvellous Segun','Male','1967-11-18','No 02 BroadwayStreet AMAC',
 'marvi43@yahoo.com','+2347098234511'),
 (9,'Professor Alfred Israel','Male','1975-10-31','No 05 Broadway street AMAC',
 'alfisr01@yahoo.com','+23480880432657'),
 (10,'Professor Henry Daniel', 'Male', '1973-12-02', 'No 34 Broadway Street AMAC',
 'henrydan01@gmail.com','+2347089345631');
 select* from biodatatable;
 use primeinstitutes;
 update biodatatable set StaffName ='Mr. Trust Michael' where StaffID=5;
 update biodatatable set StaffName='Mr. Hayatu Moses' where StaffID=6;
 update biodatatable set StaffName='Mr. Marvellous Segun' where StaffID=8;
 update biodatatable set StaffName='Mr.Alfred Israel' where StaffID=9;
 update biodatatable set StaffName='Mr. Henry Daniel' where StaffID=10;
 select* from biodatatable;
 update biodatatable set Date_of_Birth='1999-12-02' where StaffID=5;
 update biodatatable set Date_of_Birth='1999-11-18' where StaffID=8;
 update biodatatable set Date_of_Birth='1999-09-13' where StaffID=6;
 update biodatatable set Date_of_Birth='1999-10-31' where StaffID=10;
 update biodatatable set Date_of_Birth='1999-10-16' where StaffID=7;
 update biodatatable set Date_of_Birth='1999-07-16'where StaffID=9;
 select* from biodatatable;
 
 
 
 #Academic Table
 use primeinstitutes;
 alter table academictable modify column Academic_Background varchar(50) not null;
 alter table academictable modify column Department varchar(40) not null;
 alter table academictable modify column Degrees varchar(30) not null;
 alter table academictable modify column Position varchar(40) not null;
 insert into academictable(StaffID,Position,Department,Academic_Background,Degrees,Institutions,Graduation_Dates,Teaching_Experience) values
 (1,'H.O.D','Social Sciences','Economics', 'BEc,MSc,Ph.D','University Of Nigeria','1990-10-02','40 years'),
 (2, 'H.O.D', 'Information and Communication Technology','CYBERSECURITY SCIENCE','B.Tech,MSc,DSc,','FUTMINNA', '1999-12-11','35 years'),
 (3,'Lecturer','Social Sciences','Economics and Businness Admin.','BEc,MBA','N.O.U.N','2002-03-01','15 years'),
 (4, 'Associate Professor','Information and Communication Technology','CYBERSECURITY ','B.Tech,MSc,DSc,','F.U.T.A', '1990-11-15','35 years'),
 (5, 'Lecturer','Information and Communication Technology','CYBERSECURITY SCIENCE','B.Tech,MSc','FUTMINNA', '2013-12-11','10 years'),
 (6, 'Lecturer','Social Sciences','Economics ','BEc,MSc','UNIABUJA', '2013-07-11','10 years'),
 (7,'Lecturer','Medicine & Surgery','ANATOMY','MB','UNIABUJA','2013-09-16', '10 years'),
 (8,'Lecturer','Information and Communication Technology','CYBERSECURITY SCIENCE','B.Tech,MSc','FUTMINNA', '2014-12-11','9 years'),
(9, 'Lecturer','Information and Communication Technology','CYBERSECURITY SCIENCE','B.Tech,MSc','FUTMINNA', '2012-11-11','11 years'),
(10,'Lecturer','Medicine and Surgery','ANATOMY ','MB','UNIABUJA', '2013-12-11','10 years');
update academictable set Academic_Background='Economics' where StaffID=1;
update academictable set Academic_Background='Cybersecurity Science' where StaffID=2;
update academictable set Academic_Background='Economics and  Business Administration' where StaffID=3;
update academictable set Academic_Background='Cybersecurity ' where StaffID=4;
update academictable set Academic_Background='Cybersecurity Science' where StaffID=5;
update academictable set Academic_Background='Economics ' where StaffID=6;
update academictable set Academic_Background='Anatomy' where StaffID=7;
update academictable set Academic_Background='Cybersecurity Science' where StaffID=8;
update academictable set Academic_Background='Cybersecurity Science' where StaffID=9;
update academictable set Academic_Background='Anatomy' where StaffID=10;
update academictable set Institutions='University Of Nigeria' where StaffID=1;
update academictable set Institutions='FUTMINNA' where StaffID=2;
update academictable set Institutions='N.O.U.N' where StaffID=3;
update academictable set Institutions='F.U.T.A' where StaffID=4;
update academictable set Institutions='FUTMINNA' where StaffID=5;
update academictable set Institutions='UNIABUJA ' where StaffID=6;
update academictable set Institutions='F.U.T.A' where StaffID=7;
update academictable set Institutions='FUTMINNA' where StaffID=8;
update academictable set Academic_Background='FUTMINNA' where StaffID=9;
update academictable set Academic_Background='UNIABUJA' where StaffID=10;
select* from academictable;
#Other details table
use primeinstitutes;
alter table other_details_table modify column Professional_Memberships varchar(100) not null;
alter table other_details_table modify column Publications varchar(60) not null;
alter table other_details_table modify column Research_Interests varchar(100) not null;
insert into other_details_table(StaffID,Professional_Memberships,Research_Interests,Publications)values
(1, 'Institute of Chartered Economists of Nigeria ','Macroeconomics','Importance of Macroeconomics -2004'),
(2,'Cyber Security Experts Association of Nigeria','Malware Detection and Cyber threats','Essentials of cybersecurity-2008'),
(3, 'Institute of Chartered Economists of Nigeria','Financial Ecomonics','No publication'),
(4, 'Cyber Security Experts Asssociation of Nigeria','Cyber ethics and crime', 'Prevention of Cybercrime-2014'),
(5, 'Cyber Security Experts Asssociation of Nigeria','Network Intrusion and Iot security', 'No publication'),
(6, 'Institute Of Chartered Economists of Nigeria', 'Environmental Economics','No publication'),
(7, 'Nigeria Medical Association','Osteology','No publication'),
(8, 'Cyber Security Experts Asssociation of Nigeria','BCT in Network and Cyber defense','Network Security and its Essentials-2015'),
(9, 'Cyber Security Experts Asssociation of Nigeria','Web mining and online data analytics','No publication'),
(10, 'Nigeria Medical Association','Morphometry','No publications');
select* from other_details_table;