SELECT Name from Client_master where Name like '_a%';

SELECT Name from Client_master where City like '_a%';

SELECT Name from Client_master where City in ('Mumbai' , 'Delhi');

SELECT Name from Client_master where Bal_due > 10000;

SELECT * from Sales_order where Order_date like '%-JAN-%';

SELECT * from Sales_order where Client_no in ('C00001','C00002');

SELECT * FROM Sales_order_details p JOIN Product_master pp 
ON p.Product_no = pp.Product_no 
where p.Product_rate > 2000 AND p.Product_rate <= 5000;

SELECT Product_no,Product_rate * 0.15 AS new_price FROM Sales_order_details WHERE Product_rate > 1500;

SELECT Name,City,State from Client_master where State <> 'Maharashtra';

SELECT COUNT(*) from Sales_order;

SELECT AVG(Sell_price) from Product_master;

SELECT MIN(Sell_price) AS min_price, MAX(Sell_price) AS max_price from Product_master;

SELECT COUNT(*) from Sales_order_details where Product_rate >= 1500;

SELECT Product_no,Description from Product_master where Qty_on_hand < Reorder_lvl;

SELECT Order_no,Order_date from Sales_order;
