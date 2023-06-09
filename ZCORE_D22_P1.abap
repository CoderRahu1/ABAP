REPORT ZCORE_D22_P1.

************* DAY 22 PROG 1 ***************************

"""" TOPICS - FUNCTION MODULE - IS LIKE SUBROUTINE AND CAN BE CALLED MULTIPLE TIMES, SUBROUTINE IS DEFINED WITHIN SAME PROGRAM WHILE FUNCTION MODULE IS STORED IN THE FUNCTION GROUP.
""""                            FUNCTION GROUP IS CREATED IN SE80(WORKBENCH TCODE)
""""                            ALL REPOSITORY OBJECTS LIKE REPORTS , INCLUDE PROGRAMS AND SUBROUTINES ARE STORED IN TADIR DATABASE TABLE
""""                            ALL F.M NAMES ETC IS STORED IN TFDIR DATABASE TABLE IN DATA DICTIONARY(TCODE - SE11)
""""                            WHENEVER WE CREATE FUNTION MODULE IT CREATES 2 INCLUDE PROGRAMS 1) TOP INCLUDE PROGRAM AND 2) UXX INCLUDE PROGRAM (USED BY SAP)
""""                            TWO TYPES OF F.M 1)CUSTOM & 2)STANDARD


"""" NORMAL FUNCTION MODULE - MEANS CAN BE ACCESED THROUGHOUT THE SAP SERVER
"""" REMOTE FUNCTION MODULE - CAN BE ACCESSED FROM ANOTHER SERVER ALSO

FORMAT COLOR 1.

WRITE :/ 'CALLING FUNCTION MODULE WITHOUT PARAMETERS'.

CALL FUNCTION 'ZCORE_D22_P2'.                      """" NAME OF F.M IS ALWAYS IN UPPER CASE

FORMAT COLOR OFF.
ULINE.
"""" REQUIREMENT - CREATE F.M FOR SUM OF TWO NUMBERS .

"""" IN IMPORT SECTION - IF WANT OT PASS INTEGERS AS PARAMETERS WE USE USING KEYWORD.

FORMAT COLOR 2.

WRITE :/ 'FUNCTION MODULE WITH PARAMETERS'.

PARAMETERS : P_X TYPE I,
             P_Y TYPE I.

CALL FUNCTION 'ZCORE_D22_P3'              """" NOTE - SINCE TWO PARAMETERS WERE IMPORTED IN F.M THUS TWO PARAMETERS SHOULD BE EXPORTED FROM THIS PROGRAM
  EXPORTING
    i_x           = P_X
    i_y           = P_Y
          .


FORMAT COLOR OFF.
