CREATE table SAILORS(
    s_id number(3),
    s_name varchar(10),
    rating number(2),
    age number(3),
    PRIMARY KEY(s_id));

CREATE table BOATS(
    b_id number(3),
    b_name varchar(10),
    colour varchar(10),
    PRIMARY KEY(b_id));

CREATE table RESERVES(
    s_id number(3),
    b_id number(3),
    day varchar(10),
    PRIMARY KEY(s_id,b_id),
    FOREIGN KEY (s_id) REFERENCES SAILORS(s_id),
    FOREIGN KEY (b_id) REFERENCES BOATS(b_id));

INSERT ALL
INTO SAILORS VALUES(001,'Sukanya',10,21)
INTO SAILORS VALUES(002,'Tarun',6,70)
INTO SAILORS VALUES(003,'Tanir',5,99)
INTO SAILORS VALUES(004,'Dyuti',9,2)
INTO SAILORS VALUES(005,'Soumyadeep',7,21)
INTO BOATS VALUES(101,'Titanic','Red')
INTO BOATS VALUES(102,'Maria','Black')
INTO BOATS VALUES(103,'Elizabeth','Green')
INTO BOATS VALUES(104,'Celeste','Red')
INTO BOATS VALUES(105,'Sultana','Black')
INTO RESERVES VALUES(001,101,'Monday')
INTO RESERVES VALUES(002,102,'Tuesday')
INTO RESERVES VALUES(003,103,'Thursday')
INTO RESERVES VALUES(004,104,'Monday')
SELECT * FROM DUAL;

SELECT colour 
FROM BOATS,SAILORS,RESERVES 
WHERE s_name='Tarun' 
AND SAILORS.s_id=RESERVES.s_id 
AND BOATS.b_id=RESERVES.b_id;

SELECT SAILORS.s_id ,s_name 
FROM SAILORS, RESERVES 
WHERE RESERVES.s_id=SAILORS.s_id 
AND day='Monday';

SELECT b_id,b_name 
FROM BOATS 
WHERE colour IN ('Red','Green');

DELETE FROM RESERVES 
WHERE s_id IN 
(SELECT s_id FROM SAILORS 
WHERE age>60);
DELETE FROM SAILORS 
WHERE age>60;
