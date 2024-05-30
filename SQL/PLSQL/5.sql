DECLARE
    min_salary NUMBER(10);
BEGIN
    SELECT MIN(SALARY) INTO min_salary FROM EMP2 ;
    FOR i IN 1..2 
    LOOP
        IF i = 1 THEN
            INSERT INTO EMP2 VALUES (16, 'Daniela Roger', min_salary, 'Boston', 'Salesperson', SYSDATE, 2);
        ELSIF I = 2 THEN
            INSERT INTO EMP2 VALUES (17, 'Lamserk Rooper', min_salary, 'Chicago', 'Manager', SYSDATE, 5);
        END IF;
    END LOOP;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Data has been inserted successfully.') ;
    EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM) ;
END;
/