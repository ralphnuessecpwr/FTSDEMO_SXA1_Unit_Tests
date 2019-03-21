${TOTALTEST_JOBCARD}
/*JOBPARM S=CWCC
//RUNNER EXEC PGM=TTTRUNNR
//*
//* You need to modify the following DD statements.
//*
//* The first DD statement should be changed to the ECC SLCXLOAD 
//* dataset that contains the Topaz for Total Test TTTRUNNR program.
//*
//* The second DD statement should be changed to the loadlib
//* containing the programs to run during the test.
//*
//* The third DD statement is only required if running the JCL 
//* from Topaz for Total Test CLI with Code Coverage support.
//* If testing an LE application it should be changed to the
//* loadlib containing the COBOL runtime(CEE.SCEERUN), otherwise 
//* it can be removed.
//*
//STEPLIB  DD DISP=SHR,DSN=SYS2.CW.&CWGACX..SLCXLOAD
//         DD   DSN=CEE.SCEERUN,DISP=SHR
//         DD   DISP=SHR,DSN=SALESSUP.SXA1.DEV3.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.SXA1.QA3.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.SXA1.STG.LOAD
//         DD   DISP=SHR,DSN=SALESSUP.SXA1.PRD.LOAD
//*
//SLSF001  DD DISP=SHR,DSN=SALESSUP.SXA1.DEV3.CICSLOAD.SSD
//SLSF002  DD DISP=SHR,DSN=SALESSUP.SXA1.QA3.CICSLOAD.SSD
//SLSF003  DD DISP=SHR,DSN=SALESSUP.SXA1.STG.CICSLOAD.SSD
//SLSF004  DD DISP=SHR,DSN=SALESSUP.SXA1.PRD.CICSLOAD.SSD
//*
//TRPARM DD *
*
*        Optionally set your custom exit program here:
* 
EXIT(NONE)
*
REPEAT(${TOTALTEST_REPEAT}),STUBS(${TOTALTEST_STUBS}),
DEBUG(OFF)
/* 
//BININP DD DSN=${TOTALTEST_BININP},DISP=OLD
//BINREF DD DSN=${TOTALTEST_BINREF},DISP=OLD
//BINRES DD DSN=${TOTALTEST_BINRES},DISP=OLD
//*
//*      Optionally add your custom DD statements
//*DD1 DD DSN=HLQ.CUSTOM.TEST.LOAD,DISP=SHR
//SYSPRINT DD SYSOUT=*
//*

