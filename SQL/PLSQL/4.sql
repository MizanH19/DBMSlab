CREATE OR REPLACE PROCEDURE PopulateBonusTable AS v_bonus_amount NUMBER(10);
BEGIN
    v_bonus_amount := 0.20;
    INSERT INTO BONUS (BID, BAMT, EMPNO)
    SELECT BONUS_SEQ.NEXTVAL, ROUND(SALARY * v_bonus_amount, 2), EMPNO
    FROM EMP2
    WHERE OFFICE = 'Chicago'
    AND SALARY <= 15000;
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('Bonus records populated successfully.');
EXCEPTION
    WHEN OTHERS 
    THEN DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/