DECLARE
	CURSOR ename_details IS
  	SELECT EMPNAME AS ENAME FROM 
	(SELECT EMPNAME, SALARY, ROW_NUMBER() OVER (ORDER BY SALARY DESC) AS salary_rank FROM EMP) 
	WHERE salary_rank <= 7;
	ENAME VARCHAR2(30);
BEGIN
  	DBMS_OUTPUT.PUT_LINE('7 Employees with maximum salary:') ;
  	OPEN ename_details;
  	LOOP
  		FETCH ename_details INTO ENAME;
  		EXIT WHEN ename_details%NOTFOUND;
  		DBMS_OUTPUT.PUT_LINE(ENAME);
  	END LOOP ;
  	CLOSE ename_details;
END;
/