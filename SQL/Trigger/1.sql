DELIMITER//
CREATE TRIGGER update_salary_trigger
BEFORE INSERT ON EMP
FOR EACH ROW
BEGIN
    IF NEW.PERKS>500 THEN
        SET NEW.SALARY := NEW.SALARY-300;
    END IF;
END;
//DELIMITER;