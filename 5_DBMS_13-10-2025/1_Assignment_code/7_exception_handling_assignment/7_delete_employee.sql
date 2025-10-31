DELIMITER //
CREATE PROCEDURE delete_employee(IN eid INT)
BEGIN
   DECLARE EXIT HANDLER FOR SQLEXCEPTION
   BEGIN
       SELECT 'Error deleting employee' AS message;
   END;

   IF (SELECT COUNT(*) FROM employees WHERE emp_id = eid) = 0 THEN
       SELECT 'No such employee' AS message;
   ELSE
       DELETE FROM employees WHERE emp_id = eid;
       SELECT 'Employee deleted' AS message;
   END IF;
END//
DELIMITER ;

CALL delete_employee(10);
