SET SERVEROUTPUT ON;
SET VERIFY OFF;

DECLARE
function_name VARCHAR2(30);
coder_id VARCHAR2(30);
source_code SourceCode.code%TYPE;
last_id number;
	
BEGIN
	SELECT MAX(id) INTO last_id FROM SourceCode;
	last_id := last_id+1;
	DBMS_OUTPUT.PUT_LINE('The' || ' ' || 'last'|| ' ' || 'id' || ' ' || 'is:' || last_id);
	INSERT INTO SourceCode (id, code) VALUES ('&last_id', '&source_code');
    INSERT INTO CodeInfo1@site1 (id, coderId, functionName) VALUES ('&last_id', '&coder_id', '&function_name');
    
	EXCEPTION 
        WHEN DUP_VAL_ON_INDEXTHEN THEN
            DBMS_OUTPUT.PUT_LINE('Give unique value.');	
END;
/ 


commit;
select * from SourceCode natural join (select * from CodeInfo1@site1 union select * from CodeInfo2@site1);