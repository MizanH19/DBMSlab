SELECT ENAME 
FROM Employee 
WHERE SAL = 
    (SELECT MAX(SAL)
    FROM Employee);

SELECT ENAME 
FROM Employee 
WHERE SAL = 
    (SELECT MAX(SAL)
    FROM Employee
    WHERE JOB = 'Salesman');

SELECT ENAME 
FROM Employee 
WHERE SAL = 
    (SELECT MIN(SAL)
    FROM Employee
    WHERE JOB = 'Clerk');

SELECT DNAME
FROM Department
WHERE DEPTNO = 
    (SELECT DEPTNO
    FROM Employee
    GROUP BY DEPTNO
    ORDER BY AVG(SAL) DESC
    FETCH FIRST 1 ROWS ONLY);

SELECT ENAME 
FROM Employee
WHERE SAL >
    (SELECT SAL
    FROM Employee
    WHERE ENAME = 'Turner');

SELECT ENAME 
FROM Employee
WHERE HIREDATE >
    (SELECT HIREDATE
    FROM Employee
    WHERE ENAME = 'Allen');

SELECT DNAME
FROM Department
WHERE DEPTNO = 
    (SELECT DEPTNO
	FROM Employee
	WHERE ENAME = 'Ford');

SELECT DNAME
FROM Department
WHERE DEPTNO = 
    (SELECT DEPTNO
	FROM Employee
    GROUP BY DEPTNO
	ORDER BY SUM(SAL) DESC
    FETCH FIRST 1 ROWS ONLY);

SELECT LOC
FROM Department
WHERE DEPTNO = 
    (SELECT DEPTNO
	FROM Employee
	WHERE ENAME = 'Smith');

SELECT LOC
FROM Department
WHERE DEPTNO IN
    (SELECT DEPTNO
	FROM Employee
	WHERE JOB = 'Manager');

SELECT ENAME 
FROM Employee
WHERE SAL > 
    (SELECT MAX(SAL)
	FROM Employee 
	INNER JOIN Department
	ON Employee.DEPTNO = Department.DEPTNO
	WHERE LOC = 'Dallas');

SELECT DNAME 
FROM Department
WHERE DEPTNO NOT IN 
    (SELECT Distinct DEPTNO
	FROM Employee);

SELECT ENAME 
FROM Employee
WHERE HIREDATE =
    (SELECT HIREDATE
    FROM Employee
    WHERE ENAME = 'Adams')
AND ENAME != 'Adams';

SELECT DNAME 
FROM Department
WHERE DEPTNO =
    (SELECT Distinct DEPTNO
	FROM Employee
    WHERE COMM IS NOT NULL);

SELECT ENAME,DNAME
FROM Department
JOIN
    (SELECT ENAME, DEPTNO
	FROM Employee e1
	WHERE SAL= (
    	SELECT MIN(sal)
    	FROM Employee
    	WHERE DEPTNO=e1.DEPTNO)) e2
ON e2.DEPTNO = Department.DEPTNO;
