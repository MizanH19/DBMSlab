DECLARE
    v_salary_hike_factor NUMBER;
BEGIN
    FOR emp_rec IN (SELECT EMPNO, SALARY, GRADE FROM emp2) 
    LOOP
        CASE emp_rec.GRADE
            WHEN 1 THEN
                v_salary_hike_factor := 0.15; -- 15% salary hike for Grade 1
            WHEN 2 THEN
                v_salary_hike_factor := 0.12; -- 12% salary hike for Grade 2
            WHEN 3 THEN
                v_salary_hike_factor := 0.10; -- 10% salary hike for Grade 3
            WHEN 4 THEN
                v_salary_hike_factor := 0.10; -- 10% salary hike for Grade 4
            WHEN 5 THEN
                v_salary_hike_factor := 0.05; -- 5% salary hike for Grade 5
        ELSE
            v_salary_hike_factor := 0; -- No salary hike for unknown grade (should not happen based on schema)
        END CASE;
        UPDATE emp2
        SET SALARY = emp_rec.SALARY * (1 + v_salary_hike_factor)
        WHERE EMPNO = emp_rec.EMPNO;
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Salary hike applied successfully based on employee grades.');
    EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/