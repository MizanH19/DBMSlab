CREATE table Sales_order(
	Order_no Varchar2(6) check(Order_no LIKE 'O%'),
	Order_date Date,
	Client_no Varchar2(6),
	Dely_address Varchar2(25),
	Salesman_no Varchar2(6),
	Dely_type Char(1) default 'F' check(Dely_type in ('P' , 'F')),
	Billed_yn Char(1),
	Dely_date Date,
	constraint ck_date_correct check(Dely_date >= Order_date),
	PRIMARY KEY(Order_no),
	Order_status Varchar2(10) check(Order_status IN ('In Process','Fulfilled','Backorder','Cancelled')),
	FOREIGN KEY(Client_no) references Client_master(Client_no),
	FOREIGN KEY(Salesman_no) references Salesman_master(Salesman_no));

INSERT ALL 
INTO Sales_order VALUES ('O19001','12-JUN-2004','C00001',NULL,'S00001','F','N','20-JUL-2004','In Process')
INTO Sales_order VALUES ('O19002','5-JUN-2004','C00002',NULL,'S00002','P','N','27-JUN-2004','Cancelled')
INTO Sales_order VALUES ('O46865','18-FEB-2004','C00003',NULL,'S00003','F','Y','18-FEB-2004','Fulfilled')
INTO Sales_order VALUES ('O19003','03-APR-2004','C00001',NULL,'S00001','F','Y','07-APR-2004','Fulfilled')
INTO Sales_order VALUES ('O46866','20-MAY-2004','C00004',NULL,'S00002','P','N','22-MAY-2004','Cancelled')
INTO Sales_order VALUES ('O19008','24-MAY-2004','C00005',NULL,'S00004','F','N','26-JUL-2004','In Process')
SELECT * FROM DUAL;