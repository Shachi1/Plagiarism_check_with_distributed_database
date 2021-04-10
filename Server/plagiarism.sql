SET SERVEROUTPUT ON;
SET VERIFY OFF;

CREATE OR REPLACE PACKAGE plagpack AS

	PROCEDURE plagcheck(FNAME IN VARCHAR2, CID IN VARCHAR2, CID2 IN VARCHAR2);
END plagpack;
/

CREATE OR REPLACE PACKAGE BODY plagpack AS

	PROCEDURE plagcheck(FNAME IN VARCHAR2, CID IN VARCHAR2, CID2 IN VARCHAR2)
	IS
	CD SourceCode.code%TYPE;
	CD2 SourceCode.code%TYPE;
	line SourceCode.code%TYPE;
	line2 SourceCode.code%TYPE;
	numline1 integer;
	numline2 integer;
	counts integer;
	
	BEGIN
	
		
		SELECT code into CD FROM SourceCode natural join (select * from CodeInfo1@site1 union select * from CodeInfo2@site1) WHERE functionName = FNAME AND coderId = CID;
		SELECT code into CD2 FROM SourceCode natural join (select * from CodeInfo1@site1 union select * from CodeInfo2@site1) WHERE functionName = FNAME AND coderId = CID2;
		
		SELECT length(regexp_replace(CD, '[^'||chr(10)||']', '')) + 1 INTO numline1 FROM DUAL;
		SELECT length(regexp_replace(CD2, '[^'||chr(10)||']', '')) + 1 INTO numline2 FROM DUAL;
		
		counts := 0;
		DBMS_OUTPUT.PUT_LINE(chr(10) || 'Similarities:' || chr(10));
		
		FOR i IN 1..numline1 LOOP 
            select REGEXP_SUBSTR(CD,'[^'||chr(10)||']+',1,i) INTO line FROM DUAL;
			FOR j IN 1..numline2 LOOP
                select REGEXP_SUBSTR(CD2,'[^'||chr(10)||']+',1,j) INTO line2 FROM DUAL;
			
	            IF INSTR(line, line2)>0 THEN
		            DBMS_OUTPUT.PUT_LINE(line);
					counts := counts+1;
					EXIT;		
	            END IF;
			END loop inner_loop; 
        END loop outer_loop;
		
		DBMS_OUTPUT.PUT_LINE(chr(10) || 'plagiarism: ' || ROUND(counts/numline1*100,2) || '%');
	 
    EXCEPTION 
        WHEN NO_DATA_FOUND THEN 
            DBMS_OUTPUT.PUT_LINE('No such function or coder.');	
		WHEN TOO_MANY_ROWS THEN
		    DBMS_OUTPUT.PUT_LINE('Many rows detected');
	END plagcheck;
	
END plagpack;
/
