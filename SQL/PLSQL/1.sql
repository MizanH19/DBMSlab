DECLARE
	balance NUMBER(20) := &balance_input;
	min_balance NUMBER(20) := 1000;
BEGIN 
	IF 
		balance < min_balance THEN
		balance := balance - 100;
		dbms_output.put_line('The Balance is: ' || balance);
	END IF;
END;
/