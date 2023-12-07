use earlycodeacademy;
select* from studentper;
#mysql conditions
#and
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where internet='yes' and famsup='no';
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where internet='yes' or famsup='no';
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where (internet='yes' or famsup='no') and (Fjob='Admin');
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where age in(13,15);
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where age  not in(13,15);
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where Mjob like 'HE%';
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where Mjob like '%er';
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where Mjob like '%__r';
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where Mjob like '_____';
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where Mjob like '_____' or Fjob like'___';
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where traveltime is null;
select sex, age, famsize,Mjob,Fjob,internet,famsup from studentper where traveltime is not null;
select sex, age, famsize,Mjob,Fjob,internet,famsup,traveltime from studentper where traveltime <> 3;
select sex, age, famsize,Mjob,Fjob,internet,famsup,traveltime from studentper where traveltime between 1 and 3;
select sex, age, famsize,Mjob,Fjob,internet,famsup,traveltime from studentper where traveltime not between 1 and 3;

#MYSQL JOIN
select students.StudentID, students.Firstname, students.Lastname, students.Address, marks.MarkID, marks.SubjectID, marks.MarkObtained
from students inner join marks on students.StudentID=marks.MarkID;

select students.StudentID, students.Firstname, students.Lastname, students.Address, marks.MarkID, marks.SubjectID, marks.MarkObtained
from students  right join marks on students.StudentID=marks.MarkID;

select students.StudentID, students.Firstname, students.Lastname, students.Address, marks.MarkID, marks.SubjectID, marks.MarkObtained
from students left join marks on students.StudentID=marks.MarkID;

select students.StudentID, students.Firstname, students.Lastname, students.Address, marks.MarkID, marks.SubjectID, marks.MarkObtained
from students cross join marks on students.StudentID=marks.MarkID;

