select students.Name from students;

select * from students WHERE students.age>30;

select students.Name from students
where students.age=30 and students.gender='F';

select DISTINCT S.points from students S
WHERE S.Name='Alex';

INSERT INTO students (Name,Age,Gender,Points)
VALUES ('Hsein' ,22,'M',300);

UPDATE students SET Points =Points+1
where students.Name='Basma';

#For just one ALEX
UPDATE students Set Points=Points-1
where Name IN
(SELECT DISTINCT S.Name
FROM students S 
WHERE s.Name='Alex');


