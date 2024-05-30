DECLARE
    CURSOR emp_cursor IS
        SELECT SUBSTR(EMPNAME, 1, 3) AS v_first_char,
           EMPNO,
           EMPNAME AS NICKNAME,
           SALARY,
           OFFICE,
           EMPPOST,
           HIRE
        FROM emp2
        WHERE EXTRACT(YEAR FROM HIRE) = 1981;
    v_first_char VARCHAR2(3);
    empno NUMBER;
    nickname VARCHAR2(50);
    salary NUMBER;
    office VARCHAR2(50);
    emppost VARCHAR2(50);
    hire DATE;
BEGIN
    OPEN emp_cursor;
    LOOP
        FETCH emp_cursor INTO v_first_char, empno, nickname, salary, office, emppost, hire;
        EXIT WHEN emp_cursor%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE('First character of employee name hired in 1981: ' || v_first_char);
        DBMS_OUTPUT.PUT_LINE('Employee No: ' || empno);
        DBMS_OUTPUT.PUT_LINE('Nickname: ' || nickname);
        DBMS_OUTPUT.PUT_LINE('Salary: ' || TO_CHAR(salary));
        DBMS_OUTPUT.PUT_LINE('Office: ' || office);
        DBMS_OUTPUT.PUT_LINE('Employee Position: ' || emppost);
        DBMS_OUTPUT.PUT_LINE('Hire Date: ' || TO_CHAR(hire, 'YYYY-MM-DD'));
        DBMS_OUTPUT.PUT_LINE('=====================================================================');
    END LOOP;
    CLOSE emp_cursor;
    IF emp_cursor%NOTFOUND THEN
        DBMS_OUTPUT.PUT_LINE('No Employees Hired in 1981');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/