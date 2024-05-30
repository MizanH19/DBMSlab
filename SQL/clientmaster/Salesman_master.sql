CREATE table Salesman_master(
	Salesman_no Varchar2(6) check(Salesman_no LIKE 'S%'),
	Salesman_name Varchar2(20) NOT NULL,
	Address1 Varchar2(10) NOT NULL,
	Address2 Varchar2(10),
	City Varchar2(20),	
	Pincode Number(7),
	State Varchar2(20),	
	Sal_amt Number(8,2) check(Sal_amt <> 0) NOT NULL,
	Tgt_to_get Number(6,2) check(Tgt_to_get <> 0) NOT NULL,
	Ytd_sales Number(6,2) NOT NULL,
	Remarks Varchar2(20),
	PRIMARY KEY(Salesman_no));

INSERT ALL
INTO Salesman_master VALUES ('S00001','Aman','A/14','Worli','Mumbai',400002,'Maharashtra',3000,100,50,'Good')
INTO Salesman_master VALUES ('S00002','Omkar','65','Nariman','Mumbai',400001,'Maharashtra',3000,200,100,'Good')
INTO Salesman_master VALUES ('S00003','Raj','P-7','Bandra','Mumbai',400032,'Maharashtra',3000,200,100,'Good')
INTO Salesman_master VALUES ('S00004','Asish','A/5','Juhu','Mumbai',400044,'Maharashtra',3500,200,150,'Good')
SELECT * FROM DUAL;