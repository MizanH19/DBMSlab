SELECT ENAME from EMP where ENAME LIKE '_i%';

SELECT ENAME from EMP where JOB<>'Manager';

SELECT MAX(SAL) AS Maximum, MIN(SAL) as Minimum, SUM(SAL) AS Total, AVG(SAL) AS AVERAGE from EMP;

SELECT JOB, MAX(SAL) AS Maximum, MIN(SAL) as Minimum, SUM(SAL) AS Total, AVG(SAL) AS AVERAGE from EMP group by JOB;

SELECT COUNT(*) AS "Number of Mangers" FROM EMP where JOB ='Manager';

SELECT ENAME FROM EMP where HIREDATE>'01-jan-1980';

SELECT ENAME from EMP where JOB='Salesman' ORDER BY SAL DESC FETCH FIRST 1 ROWS ONLY;

SELECT ENAME from EMP where JOB='Clerk' ORDER BY SAL ASC FETCH FIRST 1 ROWS ONLY;

SELECT DEPT_NAME from EMP where ENAME='Ford';

SELECT DEPT_NAME from EMP where SAL=(SELECT MAX(SAL) from EMP); 

SELECT ENAME from EMP where SAL > (SELECT SAL from EMP where ENAME='Turner');