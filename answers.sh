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


#PART2
CREATE TABLE "graduates" (
	"ID"	INTEGER NOT NULL,
	"Name"	INTEGER NOT NULL UNIQUE,
	"Age"	INTEGER,
	"Gender"	TEXT,
	"Points"	INTEGER,
	"Graduation"	TEXT,
	#FOREIGN KEY("Graduation") REFERENCES "students"("Date"),
	PRIMARY KEY("ID" AUTOINCREMENT)
);
#Copy Layal's data from students to graduates

INSERT INTO graduates(ID,Name,Age,Gender,Points)
Select * from students;

#Add the graduation date previously mentioned to Layal's record in graduates

UPDATE graduates
set Graduation ='08/09/2018'
WHERE graduates.Name='Layal';

#Remove Layal's record from students

DELETE FROM students
WHERE students.Name='Layal';




#Part3

#Produce a table that contains, for each employee, his/her name, company name, and company date.
CREATE TABLE New_Table AS
SELECT employees.Name,employees.Company,companies.Date
FROM employees
INNER JOIN companies
ON companies.Name=employees.Company;


or 
CREATE TABLE New_Table AS
SELECT employees.Name,employees.Company,companies.Date
FROM employees ,companies
WHERE employees.Company=companies.Name;



#Find the name of employees that work in companies made before 2000.

SELECT employees.Name
FROM employees ,companies
WHERE companies.Date<2000 and employees.Company=companies.Name;



#Find the name of company that has a graphic designer.
SELECT E.name
FROM companies C ,employees E
WHERE E.Role='Graphic Designer'
and E.Company=C.name;



#Part4

#Find the person with the highest number of points in students
select S1.name
FROM students S1
WHERE S1.Points IN
(select max(S2.points)
FROM students S2);

#Find the average of points in students
select avg(S1.Points)
FROM students S1;

#Find the number of students that have 500 points
select Count(*)
FROM students S1
WHERE S1.Points =500;

#Find the names of students that contains 's'
select S1.name
FROM students S1
WHERE S1.name like '%s%';

#Find all students based on the decreasing order of their points
select S1.name
FROM students S1
ORDER by S1.Points DESC;

