CREATE table EMP(
	EMPNO number(4),
	ENAME varchar(10),
	JOB char(10),
	MGR number(4),
	HIREDATE date,
	SAL number(6),
	COMM number(6),
	DEPTNO number(2),
	PRIMARY KEY(EMPNO),
	FOREIGN KEY(DEPTNO) references DEPT(DEPTNO));

INSERT into EMP VALUES(7369,'Smith','Clerk',7902,'17-dec-80',800,NULL,20);
INSERT into EMP	VALUES(7499, 'Allen','Salesman', 7698,'20-feb-81', 1600, 300, 30);
INSERT into EMP	VALUES(7521, 'Ward','Salesman', 7698,'22-feb-81', 1250, 500, 30);
INSERT into EMP	VALUES(7566, 'Jones','Manager', 7839,'2-apr-81', 2975,NULL, 20);
INSERT into EMP	VALUES(7654, 'Martin','Salesman', 7698,'28-sep-81', 1250 ,1400, 30);
INSERT into EMP	VALUES(7698, 'Blake','Manager', 7839,'1-may-81', 2850,NULL, 30);
INSERT into EMP	VALUES(7782, 'Clark','Manager', 7839,'9-jun-81', 2450 ,NULL,10);
INSERT into EMP	VALUES(7788, 'Scott','Analyst', 7566,'9-dec-82', 3000,NULL, 20);
INSERT into EMP	VALUES(7839, 'King','President',NULL,'17-nov-81', 5000,NULL, 10);
INSERT into EMP	VALUES(7844, 'Turner','Salesman', 7698,'8-sep-81', 1500 ,0, 30);
INSERT into EMP	VALUES(7876, 'Adams','Clerk',7788,'12-jan-83', 1100,NULL, 20);
INSERT into EMP	VALUES(7900, 'James','Clerk', 7698, '3-dec-81', 950,NULL, 30);
INSERT into EMP	VALUES(7902, 'Ford','Analyst', 7566, '4-dec-81', 3000,NULL, 20);
INSERT into EMP	VALUES(7934, 'Miller','Clerk', 7782, '23-jan-82', 1300,NULL,10);
