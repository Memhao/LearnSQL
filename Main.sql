SET serveroutput ON size 20000
DECLARE
  ID_FOLDER NUMBER := 1;
BEGIN
PRINT_MSG('hELLO');
DEL(0);

MKDIR(0,'..',0);
MKDIR(1,'DIR1',0);
MKDIR(2,'DIR2',0);
MKDIR(3,'DIR11',1);
MKDIR(4,'DIR12',1);
MKDIR(5,'DIR21',2);
MKDIR(6,'DIR22',2);
MKDIR(7,'DIR23',2);
MKFILE(1,'FILE1',2);
WRITE_FILE(1,'This s');
LF(2,'FILE1');
LD(1);
PRINT_MSG('-------------');
LD(2);
CD(ID_FOLDER,'..');
DBMS_OUTPUT.put_line (ID_FOLDER);
mkdir(-1,'cucu',-2);
DEL(0);
END;
/