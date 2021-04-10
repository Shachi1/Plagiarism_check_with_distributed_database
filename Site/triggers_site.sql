SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE TRIGGER insert_trigger2 AFTER INSERT ON CodeInfo1

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row inserted in CodeInfo1.');
END;
/

CREATE OR REPLACE TRIGGER insert_trigger3 AFTER INSERT ON CodeInfo2

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row inserted in CodeInfo2.');
END;
/



CREATE OR REPLACE TRIGGER delete_trigger2 AFTER DELETE ON CodeInfo1

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row deleted in CodeInfo1.');
END;
/

CREATE OR REPLACE TRIGGER delete_trigger3 AFTER DELETE ON CodeInfo2

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row deleted in CodeInfo2.');
END;
/



CREATE OR REPLACE TRIGGER update_trigger2 AFTER UPDATE ON CodeInfo1

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row updated in CodeInfo1.');
END;
/

CREATE OR REPLACE TRIGGER update_trigger3 AFTER UPDATE ON CodeInfo2

BEGIN
	DBMS_OUTPUT.PUT_LINE(chr(10) || 'Row updated in CodeInfo2.');
END;
/