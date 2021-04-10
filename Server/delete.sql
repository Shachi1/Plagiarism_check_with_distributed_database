SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    source_code SourceCode.code%TYPE;
	del_id integer := &delete_id;
	
BEGIN

	DELETE FROM SourceCode WHERE id = del_id;
	DELETE FROM CodeInfo1@site1 WHERE id = del_id;
	DELETE FROM CodeInfo2@site1 WHERE id = del_id;
	
	EXCEPTION 
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No such row.');
END;
/ 

commit;

select * from SourceCode natural join (select * from CodeInfo1@site1 union select * from CodeInfo2@site1);