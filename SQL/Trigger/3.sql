CREATE TABLE EMP1(
  EID NUMBER(5) PRIMARY KEY,
  ENAME VARCHAR2(30),
  SALARY NUMBER(10,2));

CREATE TABLE EMP_BACKUP(
  EID NUMBER(5) PRIMARY KEY,
  ENAME VARCHAR2(30),
  SALARY NUMBER(10,2));

DELIMITER//
CREATE TRIGGER emp_insert_trigger
AFTER INSERT ON EMP
FOR EACH ROW
BEGIN
    INSERT INTO EMP_BACKUP(EID,ENAME,SALARY) VALUES (new.EID, new.ENAME, new.SALARY);
END;
//DELIMITER;

INSERT INTO EMP1 VALUES(1, 'Sukanya Manna',15000);
SELECT * FROM EMP1;
SELECT * FROM EMP_BACKUP;
