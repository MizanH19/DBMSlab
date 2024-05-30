SELECT TO_CHAR(sysdate, 'DD-MON-YYYY HH24:MI:SS') as "Current Time" from dual;

SELECT 2 * 2 from dual;

SELECT ABS(-15) from dual;

SELECT SQRT(5) from dual;

SELECT ROUND(15.19,1) from dual;

SELECT LOWER('IVAN BAYROSS') as Lowercase from dual;

SELECT UPPER('ivan bayross') as Uppercase from dual;

SELECT DATEADD(mm,5,getdate()) from dual;

SELECT ADD_MONTHS(SYSDATE, 5) as New_Date from dual;

SELECT FLOOR(ABS(MONTHS_BETWEEN(TO_DATE('01-02-2001','MM-DD-YYYY'),TO_DATE('07-02-2001','MM-DD-YYYY')))) as "Months" from dual;

SELECT TO_CHAR(sysdate, 'DD/MM/YYYY') as "Date Format" from dual;
