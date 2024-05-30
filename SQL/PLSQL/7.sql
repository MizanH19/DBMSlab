DECLARE
    v_salary_hike_factor NUMBER;
BEGIN
    BEGIN
        EXECUTE IMMEDIATE 'ALTER TABLE emp2 ADD (NEW_SALARY NUMBER(10,2), HIKE_DATE DATE)';
    EXCEPTION
    WHEN OTHERS THEN
        IF SQLCODE != -955 THEN
            RAISE;
        END IF;
    END;

    FOR emp_rec IN (SELECT EMPNO, SALARY, GRADE FROM emp2) 
    LOOP
        CASE emp_rec.GRADE
            WHEN 1 THEN
                v_salary_hike_factor := 0.15;
            WHEN 2 THEN
                v_salary_hike_factor := 0.12;
            WHEN 3 THEN
                v_salary_hike_factor := 0.10;
            WHEN 4 THEN
                v_salary_hike_factor := 0.10;
            WHEN 5 THEN
                v_salary_hike_factor := 0.05;
            ELSE
                v_salary_hike_factor := 0;
        END CASE;
    UPDATE emp2
    SET NEW_SALARY = ROUND(emp_rec.SALARY * (1 + v_salary_hike_factor), 2),
        HIKE_DATE = SYSDATE
    WHERE EMPNO = emp_rec.EMPNO;
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('New salary and hike date calculated and updated successfully.');
    EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/
