CREATE table Client_master(
	Client_no varchar2(6) Check(Client_no LIKE 'C%'),
	Name varchar2(20) NOT NULL,
	City varchar2(15),
	Pincode Number(8),
	State varchar2(15),
	Bal_due number(10,2),
	PRIMARY KEY(Client_no));

INSERT ALL 
INTO Client_master VALUES ('C00001','Ivan Bayross','Mumbai',400054,'Maharashtra',15000)
INTO Client_master VALUES ('C00002','Mamta Mazumdar','Madras',780001,'Tamil Nadu',0)
INTO Client_master VALUES ('C00003','Chhaya Bankar','Mumbai',400057,'Maharashtra',5000)
INTO Client_master VALUES ('C00004','Ashwini Joshi','Bangalore',560001,'Karnataka',0)
INTO Client_master VALUES ('C00005','Hansel Colaco','Mumbai',400060,'Maharashtra',2000)
INTO Client_master VALUES ('C00006','Deepak Sharma','Mangalore',560050,'Karnataka',0)
SELECT * from DUAL;