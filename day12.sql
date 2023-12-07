create database jkhotelsystem1;

use jkhotelsystem1;
drop database jkhotelsystem1;

create database primeinstitutes;
use primeinstitutes;
create table staffinfo1(staffid int primary key not null, staffname varchar(255) not null, staffgender varchar (50) not null);
alter table staffinfo1 add column staffaddress text not null;
show columns from staffinfo1;
alter table staffinfo1 add column staffphonenumber varchar(50) not null after staffgender;
show columns from staffinfo1;
alter table staffinfo1 add column duplicatedid int first;
show columns from staffinfo1;
alter table staffinfo1 drop column duplicatedid;
show columns from staffinfo1;
alter table staffinfo1 modify column staffgender varchar(25) not null;
show columns from staffinfo1;
alter table staffinfo1 change column staffphonenumber staffcontacts varchar(50) not null;
show columns from staffinfo1;
alter table staffinfo1 rename to staffdetails1;
show tables;
drop table staffdetails1;
show tables;