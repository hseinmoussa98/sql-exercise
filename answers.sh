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


