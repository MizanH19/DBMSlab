CREATE TABLE Teacher(
    Tid number(3),
    Name varchar(10),
    Dept varchar(10),
    PRIMARY KEY(Tid));

CREATE TABLE Subject(
    Subno number(3),
    Subtitle varchar(15),
    PRIMARY KEY(Subno));

CREATE TABLE TaughtBy(
    Tid number(3),
    Subno number(3),
    PRIMARY KEY(Tid,Subno),
    FOREIGN KEY(Tid) REFERENCES Teacher(Tid),
    FOREIGN KEY(Subno) REFERENCES Subject(Subno));

CREATE TABLE Student(
    Rollno number(2),
    Sname varchar(10),
    City varchar(10),
    PRIMARY KEY(Rollno));

INSERT ALL
INTO Teacher VALUES(001,'MDu','CSE')
INTO Teacher VALUES(002,'AT','Physics')
INTO Teacher VALUES(003,'DC','CSE')
INTO Teacher VALUES(004,'SoM','Physics')
INTO Teacher VALUES(005,'SCh','Maths')
INTO Subject VALUES(101,'Thermodynamics')
INTO Subject VALUES(102,'DBMS')
INTO Subject VALUES(103,'Set Theory')
INTO TaughtBy VALUES(001,102)
INTO TaughtBy VALUES(002,101)
INTO TaughtBy VALUES(003,102)
INTO TaughtBy VALUES(004,101)
INTO TaughtBy VALUES(005,103)
INTO Student VALUES(44,'Sukanya','Howrah')
INTO Student VALUES(8,'Koyena','Kolkata')
INTO Student VALUES(24,'Shounak','Ballygunge')
INTO Student VALUES(25,'Bishal','Kolkata')
INTO Student VALUES(60,'Tanir','Kathi')
SELECT * FROM DUAL;

SELECT Name 
FROM Teacher,Subject,TaughtBy 
WHERE dept='Physics'
AND subtitle='Thermodynamics' 
AND Teacher.Tid=TaughtBy.Tid
AND Subject.Subno=TaughtBy.Subno;

UPDATE Subject 
SET Subtitle='RDBMS' 
WHERE Subtitle='DBMS';

SELECT Sname 
FROM Student 
WHERE City='Kolkata' 
AND Rollno BETWEEN 20 AND 25;

SELECT * 
FROM Student 
WHERE City='Kolkata' 
ORDER BY Rollno DESC;