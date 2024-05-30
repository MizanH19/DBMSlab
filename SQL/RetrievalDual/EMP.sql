CREATE table EMP( 
	EMPNO number(4) check (EMPNO>=7000 AND EMPNO<=8000), 
	ENAME varchar(10), 
	JOB char(10), 
	MGR number(4), 
	HIREDATE date, 
	SAL number(6), 
	COMM number(6) DEFAULT 0 check (COMM <1500), 
    DEPT_NAME varchar(10), 
    CONSTRAINT ck check ((JOB = 'Salesman' AND COMM IS NOT NULL) OR (JOB != 'Salesman' AND COMM IS NULL)),
    PRIMARY KEY(EMPNO), 
    FOREIGN KEY(MGR) REFERENCES EMP(EMPNO));

INSERT into EMP	VALUES(7839, 'King','President',7839,'17-nov-81', 5000,NULL,'Accounting');
INSERT into EMP	VALUES(7566, 'Jones','Manager', 7839,'2-apr-81', 2975,NULL,'Research');
INSERT into EMP	VALUES(7698, 'Blake','Manager', 7839,'1-may-81', 2850,NULL, 'Sales');
INSERT into EMP	VALUES(7782, 'Clark','Manager', 7839,'9-jun-81', 2450 ,NULL,'Accounting');
INSERT into EMP	VALUES(7788, 'Scott','Analyst', 7566,'9-dec-82', 3000,NULL,'Research');
INSERT into EMP	VALUES(7902, 'Ford','Analyst', 7566, '4-dec-81', 3000,NULL,'Research');
INSERT into EMP	VALUES(7499, 'Allen','Salesman', 7698,'20-feb-81', 1600, 300,'Sales');
INSERT into EMP	VALUES(7521, 'Ward','Salesman', 7698,'22-feb-81', 1250, 500,'Sales');
INSERT into EMP	VALUES(7654, 'Martin','Salesman', 7698,'28-sep-81', 1250 ,1400,'Sales');
INSERT into EMP	VALUES(7844, 'Turner','Salesman', 7698,'8-sep-81', 1500 ,0,'Sales');
INSERT into EMP	VALUES(7876, 'Adams','Clerk',7788,'12-jan-83', 1100,NULL,'Research');
INSERT into EMP	VALUES(7934, 'Miller','Clerk', 7782, '23-jan-82', 1300,NULL,'Accounting');
INSERT into EMP VALUES(7369,'Smith','Clerk',7902,'17-dec-80',800,NULL,'Research');

