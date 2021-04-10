SET SERVEROUTPUT ON;
SET VERIFY OFF;

ACCEPT f_name CHAR FORMAT 'A20' PROMPT 'Enter function name:  '
ACCEPT c_id CHAR FORMAT 'A20' PROMPT 'Enter 1st coder id:  '
ACCEPT c_id2 CHAR FORMAT 'A20' PROMPT 'Enter 2nd coder id:  '
DECLARE
    func_name VARCHAR2(30):= '&f_name';
    coder_id VARCHAR2(30):= '&c_id';
    coder_id2 VARCHAR2(30):= '&c_id2';
    op integer;
BEGIN
	
	plagpack.plagcheck(func_name, coder_id, coder_id2);
	
END;
/ 