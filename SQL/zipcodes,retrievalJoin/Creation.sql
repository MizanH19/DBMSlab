CREATE TABLE ZIPCODES(
    ZIP number(6),
    CITY varchar(20),
    PRIMARY KEY(ZIP));

CREATE TABLE EMPLOYEES(
    ENO number(3),
    ENAME varchar(10),
    ZIP number(6),
    HDATE date,
    PRIMARY KEY(ENO),
    FOREIGN KEY(ZIP) REFERENCES ZIPCODES(ZIP));

CREATE TABLE PARTS(
    PNO number(5),
    PNAME varchar(10),
    QOH number(3),
    PRICE number(5),
    LVL number(2),
    PRIMARY KEY(PNO));

CREATE TABLE CUSTOMERS(
    CNO number(3),
    CNAME varchar(10),
    STREET varchar(30),
    ZIP number(6),
    PHONE number(10),
    PRIMARY KEY (CNO),
    FOREIGN KEY(ZIP) REFERENCES ZIPCODES(ZIP));

CREATE TABLE ORDERS(
    ONO number(3),
    CNO number(3),
    ENO number(3),
    PRECEIVED date,
    SHIPPED date,
    PRIMARY KEY(ONO),
    FOREIGN KEY(CNO) REFERENCES CUSTOMERS(CNO),
    FOREIGN KEY(ENO) REFERENCES EMPLOYEES(ENO));

CREATE TABLE ODETAILS(
    ONO number(3),
    PNO number(5),
    QTY number(5),
    PRIMARY KEY(ONO,PNO),
    FOREIGN KEY (ONO) REFERENCES ORDERS(ONO),
    FOREIGN KEY (PNO) REFERENCES PARTS(PNO));

INSERT ALL
INTO ZIPCODES VALUES(672260,'Wichita')
INTO ZIPCODES VALUES(606060,'Fort Dodge')
INTO ZIPCODES VALUES(503020,'Mumbai')
INTO ZIPCODES VALUES(544440,'Columbia')
INTO ZIPCODES VALUES(660020,'Liberal')
INTO ZIPCODES VALUES(611110,'Fort Hays')
INTO EMPLOYEES VALUES(100,'Jones',672260,'12-dec-1995')
INTO EMPLOYEES VALUES(101,'Smith',606060,'01-jan-2002')
INTO EMPLOYEES VALUES(102,'Brown',503020,'01-sep-2015')
INTO PARTS VALUES(10506,'Part1',200,20,2)
INTO PARTS VALUES(10507,'Part2',156,20,2)
INTO PARTS VALUES(10508,'Part3',190,20,2)
INTO PARTS VALUES(10509,'Part4',200,20,2)
INTO PARTS VALUES(10601,'Part5',300,25,2)
INTO PARTS VALUES(10701,'Part6',120,20,3)
INTO PARTS VALUES(10800,'Part7',140,15,3)
INTO PARTS VALUES(10900,'Part8',100,25,3)
INTO CUSTOMERS VALUES(111,'Charles','123 Main Street',672260,3166365555)
INTO CUSTOMERS VALUES(222,'Bertram','237 Ash Avenue',672260,3166895555)
INTO CUSTOMERS VALUES(333,'Barbara','111 Inwood Street', 606060,3161111234)
INTO ORDERS VALUES(120,111,100,'10-dec-2019','12-dec-2019')
INTO ORDERS VALUES(121,111,100,'12-jan-2020','15-jan-2020')
INTO ORDERS VALUES(122,222,101,'13-feb-2020','20-feb-2020')
INTO ORDERS VALUES(123,333,100,'01-mar-2020',NULL)
INTO ODETAILS VALUES(120,10506,1)
INTO ODETAILS VALUES(120,10507,1)
INTO ODETAILS VALUES(120,10508,2)
INTO ODETAILS VALUES(120,10509,3)
INTO ODETAILS VALUES(121,10601,4)
INTO ODETAILS VALUES(122,10601,1)
INTO ODETAILS VALUES(122,10701,1)
INTO ODETAILS VALUES(123,10800,1)
INTO ODETAILS VALUES(123,10900,1)
SELECT * FROM DUAL;
