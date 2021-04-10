SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE TRIGGER insert_trigger1 AFTER INSERT ON SourceCode

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row inserted in SourceCode.');
END;
/

CREATE OR REPLACE TRIGGER delete_trigger1 AFTER DELETE ON SourceCode

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row deleted in SourceCode.');
END;
/


CREATE OR REPLACE TRIGGER update_trigger1 AFTER UPDATE ON SourceCode

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row updated in SourceCode.');
END;
/
