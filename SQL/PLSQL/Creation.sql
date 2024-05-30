CREATE TABLE EMP(
  EMPNO NUMBER(5) PRIMARY KEY,
  EMPNAME VARCHAR2(30),
  SALARY NUMBER(10),
  OFFICE VARCHAR2(20),
  EMPPOST VARCHAR2(20),
  HIRE DATE,
  GRADE NUMBER(1) CHECK (GRADE BETWEEN 1 AND 5)
);


CREATE TABLE BONUS(
  BID NUMBER(5) PRIMARY KEY,
  BAMT NUMBER(10),
  EMPNO NUMBER(5),
  FOREIGN KEY (EMPNO) REFERENCES EMP(EMPNO)
);


INSERT INTO EMP VALUES (1, 'John Doe', 50000, 'New York', 'Manager',  '01-JAN-1981', 4);
INSERT INTO EMP VALUES (2, 'Jane Smith', 60000, 'Los Angeles', 'Developer','15-FEB-1982',  3);
INSERT INTO EMP VALUES (3, 'Michael Johnson', 55000, 'Chicago', 'Analyst','20-MAR-1981',  5);
INSERT INTO EMP VALUES (4, 'Emily Brown', 48000, 'Houston', 'Assistant','10-APR-1983',  2);
INSERT INTO EMP VALUES (5, 'Christopher Lee', 52000, 'San Francisco','Designer','05-MAY-1981',  4);
INSERT INTO EMP VALUES (6, 'Amanda Wilson', 58000, 'Seattle', 'Manager','15-JUN-1984',  3);
INSERT INTO EMP VALUES (7, 'David Martinez', 51000, 'Boston', 'Developer','25-JUL-1981',  5);
INSERT INTO EMP VALUES (8, 'Sarah Taylor', 53000, 'Miami', 'Analyst','30-AUG-1985',  4);
INSERT INTO EMP VALUES (9, 'Daniel Anderson', 59000, 'Dallas', 'Assistant','10-SEP-1981',  2);
INSERT INTO EMP VALUES (10, 'Jessica Garcia', 54000, 'Phoenix', 'Designer','20-OCT-1986',  3);
INSERT INTO EMP VALUES (11, 'James Rodriguez', 56000, 'Atlanta', 'Manager','01-NOV-1981',  4);
INSERT INTO EMP VALUES (12, 'Ashley Hernandez', 60000, 'Denver', 'Developer','05-DEC-1987',  5);
INSERT INTO EMP VALUES (13, 'Matthew Lewis', 52000, 'Philadelphia', 'Analyst','10-JAN-1981',  3);
INSERT INTO EMP VALUES (14, 'Olivia Clark', 57000, 'Detroit', 'Assistant','15-FEB-1988',  4);
INSERT INTO EMP VALUES (15, 'Ethan Adams', 58000, 'San Diego', 'Designer','20-MAR-1981',  2);