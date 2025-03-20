//USERINFO JOB 1,NOTIFY=&SYSUID
//COBRUN  EXEC IGYWCL
//COBOL.SYSIN  DD DSN=&SYSUID..CBL(USERINFO),DISP=SHR
//***************************************************/
// IF RC = 0 THEN
//***************************************************/
//RUN     EXEC PGM=CBL0007
//USERINFO   DD DSN=&SYSUID..USERINFO,DISP=SHR
//***************************************************/
// ELSE
// ENDIF