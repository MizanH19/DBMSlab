CREATE table Sales_order_details(
	Order_no Varchar2(6),
	Product_no varchar2(6),
	Oty_ordered Number(8),
	Qty_disp Number(8),
	Product_rate Number(10,2),
	FOREIGN KEY (Order_no) REFERENCES Sales_order(Order_no),
	FOREIGN KEY (Product_no) REFERENCES Product_master(Product_no));

INSERT ALL
INTO Sales_order_details VALUES ('O19001','P00001',4,4,525)
INTO Sales_order_details VALUES ('O19001','P07965',2,1,8400)
INTO Sales_order_details VALUES ('O19001','P07885',2,1,5250)
INTO Sales_order_details VALUES ('O19002','P00001',10,0,525)
INTO Sales_order_details VALUES ('O46865','P07868',3,3,3150)
INTO Sales_order_details VALUES ('O46865','P07885',3,1,5250)
INTO Sales_order_details VALUES ('O46865','P00001',10,10,525)
INTO Sales_order_details VALUES ('O46865','P0345',4,4,1050)
INTO Sales_order_details VALUES ('O19003','P0345',2,2,1050)
INTO Sales_order_details VALUES ('O19003','P06734',1,1,12000)
INTO Sales_order_details VALUES ('O46866','P07965',1,0,8400)
INTO Sales_order_details VALUES ('O46866','P07975',1,0,1050)
INTO Sales_order_details VALUES ('O19008','P00001',10,5,525)
INTO Sales_order_details VALUES ('O19008','P07975',5,3,1050)
SELECT * FROM DUAL;