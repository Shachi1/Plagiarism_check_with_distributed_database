SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
    source_code SourceCode.code%TYPE;
	up_id integer := &update_id;
	
BEGIN

	UPDATE SourceCode SET code = '&source_code' WHERE id = up_id;
	
	EXCEPTION 
        WHEN NO_DATA_FOUND THEN
            DBMS_OUTPUT.PUT_LINE('No such row.');	
END;
/ 

commit;

select * from SourceCode natural join (select * from CodeInfo1@site1 union select * from CodeInfo2@site1);