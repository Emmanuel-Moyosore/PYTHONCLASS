create database earlycodeAcademy;
use earlycodeAcademy;
select* from marks;
select* from students;
select* from teachers;
select* from subjects;

select distinct Address from students;
select StudentID, sum(MarkObtained) from Marks group by StudentID;
select StudentID, avg(MarkObtained) from Marks group by StudentID;
select StudentID, min(MarkObtained) from Marks group by StudentID;
select StudentID, max(MarkObtained) from Marks group by StudentID;
select StudentID, count(MarkObtained) from Marks group by StudentID;

#MYSQL CONTROL FLOW PROGRAM
select *, if(MarkObtained>=90,'Yes','NO') as result from marks;
select StudentID, MarkObtained, if(MarkObtained>=90,'Yes','NO') as result from marks;

select *,ifnull(StudentID,SubjectID) from marks;
select *,nullif(StudentID,SubjectID) from marks;

select
*,
case 
	when MarkObtained>=70.0 and MarkObtained<=75.0 then'C'
    when MarkObtained>75.0 and Markobtained<=85.0 then'B'
    else 'A'
end as Grade from marks;


select
*,
case TeacherID
	when 1 then'Junior Teacher'
    when 2 then 'Intermediate'
    when 3 then 'Intermediate'
    else 'Senior Teacher'
end as Grade from marks;


select StudentID, avg(Markobtained) from Marks group by StudentID;
select StudentID , avg(Markobtained) from Marks  where StudentID=3 or StudentID=4 or StudentID=6 group by StudentID;
select StudentID , max(Markobtained) from Marks  where StudentID=15 or StudentID=8 or StudentID=1 group by StudentID;
select StudentID , min(Markobtained) from Marks  where StudentID=10 or StudentID=11 or StudentID=13 group by StudentID;
select StudentID, count(SubjectID) from Marks group by StudentID;