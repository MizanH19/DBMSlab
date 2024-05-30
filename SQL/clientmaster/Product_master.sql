CREATE table Product_master(
	Product_no varchar2(6) Check(Product_no LIKE 'P%'),
	Description varchar2(15) NOT NULL,
	Profit_percent number(4,2) NOT NULL,
	Unit_measure varchar2(10) NOT NULL,
	Qty_on_hand number(8) NOT NULL,
	Reorder_lvl number(8) NOT NULL,
	Sell_price number(8,2) check(Sell_price <> 0) NOT NULL,
	Cost_price number(8,2) check(Cost_price <> 0) NOT NULL,
	PRIMARY KEY(Product_no));

INSERT ALL
INTO Product_master VALUES ('P00001','T-shirt',5,'Piece',200,50,350,250)
INTO Product_master VALUES ('P0345','Shirt',6,'Piece',150,50,500,350)
INTO Product_master VALUES ('P06734','Cotton Jeans',5,'Piece',100,20,600,450)
INTO Product_master VALUES ('P07865','Jeans',5,'Piece',100,20,750,500)
INTO Product_master VALUES ('P07868','Trousers',2,'Piece',150,50,850,550)
INTO Product_master VALUES ('P07885','PuM-Overs',2.5,'Piece',80,30,700,450)
INTO Product_master VALUES ('P07965','Denim Shirts',4,'Piece',100,40,350,250)
INTO Product_master VALUES ('P07975','Lyers Tops',5,'Piece',70,30,300,175)
INTO Product_master VALUES ('P08865','Skirts',5,'Piece',75,30,450,300)
SELECT * FROM DUAL;