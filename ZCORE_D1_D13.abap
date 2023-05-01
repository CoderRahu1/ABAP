REPORT ZCORE_D1_D13.


*DATA : V_Z TYPE I.    " VARIABLE FOR STORING THE VALUE FROM INPUT FIELD
*
*
*
*
*
******************   ARITHMETIC OPERATORS ********************
**DATA : X TYPE i,   " DECLARING VARIBLES.
**       Y TYPE I,
**       Z TYPE I.
**
**
**X = 10.  " Initialization.
**Y = 10.
**
**WRITE :/ 'The Values Of Two Numbers Are X = ', X, 'Y = ', Y.
**
**
**Z = X + Y.  " Addition
**
**ULINE.
**WRITE :/ 'The Sum Of Two Numbers  Is :', Z COLOR 1 CENTERED.  " Display statemenet.
**
**ULINE.
**X = 10.  " Initialization.
**Y = 10.
**
**Z = X - Y.  " Addition
**
**WRITE :/ 'The Substraction Of Two Numbers  Is :', Z COLOR 2 CENTERED.  " Display statemenet.
**
**ULINE.
**
**Z = X * Y.
**
**
**WRITE :/ 'The Multiplication Of Two Variables Is :' , Z COLOR 3 CENTERED.
**
**ULINE.
**
**Z = X / Y.
**
**
**WRITE :/ 'The Division Of Two Variables Is :' , Z COLOR 4 LEFT-JUSTIFIED.
**
**ULINE.
**
**
**
*****************   ANOTHER METHOD FOR DEFINING OPERATORS *******************************
**
**
**
**DATA : V1 TYPE I VALUE 10,
**       V2 TYPE I VALUE 10.
**
**
**
**
**
**
**
**DATA : V_X TYPE C,
**       V_Y TYPE I.
**
**
**V_X = 'RAHUL PILLAI'.
**V_Y = 20 .
**
**
**WRITE :/ 'V_X IS ', V_X,    " THIS VALUE IS UNITIALIZED TO SPACE AND INTEGER TO 0
**       / 'V_Y IS', V_Y.
**
**
**uline.
**
**data : v_z(16) type c.
**
**v_z = 'RAHUL PILLAI'.
**
**
**WRITE :/ V_Z.
**
**
**
*
*
*
*
*
************************ DAY 6 *************************************
*
*
*
*
** SELECTION SCREEN PROGRAMMMING SCREENE DEVELOPMENT
*
*
*
**PARAMETERS : P_X TYPE I DEFAULT 20,
**             P_Y TYPE I DEFAULT 15.
*
*SELECTION-SCREEN BEGIN OF BLOCK BK1 WITH FRAME title t1.   " Selctiom screen block layout.
*
*SELECTION-SCREEN BEGIN OF LINE.
*  SELECTION-SCREEN COMMENT 8(20) LB1.
**                             8 MEANS STARTING FROM 8 FROM LEFT POSITION AND RESERVE 20 CHAR OR SPACES NOW FOR ENTIRE TEXT GIVING SOME VARIABLE NAME LB1
*  PARAMETERS : P_X TYPE I DEFAULT 20 OBLIGATORY.
*
*
*SELECTION-SCREEN END OF LINE.
*
*SELECTION-SCREEN BEGIN OF LINE.
*  SELECTION-SCREEN COMMENT 8(20) LB2.
**                             8 MEANS STARTING FROM 8 FROM LEFT POSITION AND RESERVE 20 CHAR OR SPACES NOW FOR ENTIRE TEXT GIVING SOME VARIABLE NAME LB1
*  PARAMETERS : P_Y TYPE I DEFAULT 15 OBLIGATORY.
*
*
*SELECTION-SCREEN END OF LINE.
*
*SELECTION-SCREEN END OF BLOCK BK1.
*
*SELECTION-SCREEN BEGIN OF BLOCK BK2 WITH FRAME TITLE T2.
*
*
*
*PARAMETERS : P_R1 RADIOBUTTON GROUP GRP1,
*             P_R2 RADIOBUTTON GROUP GRP1,
*             P_R3 RADIOBUTTON GROUP GRP1,
*             P_R4 RADIOBUTTON GROUP GRP1,
*             P_R5 RADIOBUTTON GROUP GRP1 DEFAULT 'X'.
*
*SELECTION-SCREEN END OF BLOCK BK2.
*
*INITIALIZATION.
*
*LB1 = 'ENTER FIRST NUMBER'.
*LB2 = 'ENTER SECOND NUMBER'.
*T1 = 'ENTER INPUT VALUES'.
*T2 = 'ARITHMETIC OPERATIONS'.
*
*START-OF-SELECTION.
*
*IF P_R1 = 'X'.
*  V_Z = P_X + P_Y.
*  WRITE :/ 'SUM IS :', V_Z.
*
*ELSEIF P_R2 = 'X'.
*  V_Z = P_X - P_Y.
*
*  if V_Z >= 0.
*    WRITE :/ 'DIFFERENCE IS :', V_Z.
*  ELSE.
*    WRITE :/ 'DIFFERENCE IS : -' NO-GAP,V_Z NO-SIGN LEFT-JUSTIFIED.
*  ENDIF.
*
*
*ELSEIF P_R3 = 'X'.
*  V_Z = P_X * P_Y.
*  WRITE :/ 'PRODUCT IS :', V_Z.
*ELSEIF P_R4 = 'X'.
*  V_Z = P_X / P_Y.
*  WRITE :/ ' IS :', V_Z.
*
*ELSE.
**  write :/ 'NONE OF THE BUTTON IS SELECTED'.
*   MESSAGE 'NONE RADIOBUTTON SELECTED' TYPE 'I'.
*ENDIF.
*
*

*************************** DAY 7 **********************************

**PARAMETERS : P_X TYPE I DEFAULT 20 OBLIGATORY,
**             P_Y TYPE I DEFAULT 10 OBLIGATORY,
**             P_STR  TYPE STRING LOWER CASE DEFAULT 'HELLO WORLD'.
**
**
**DATA : V_Z TYPE I. " VARIABLE DECLARED NORMALLY USING V_ AND THIS VARIBLE IS USED TO STORE USER INPUT
**
**V_Z = P_X + P_Y.
**
**
**WRITE :/ 'SUM OF TWO NUMBERS IS :', V_Z COLOR 2 LEFT-JUSTIFIED.
**
***WRITE :/ 'ENTERED STRING IS :', P_STR COLOR 2 LEFT-JUSTIFIED.      "(OR )
**
**FORMAT COLOR 6.
**
**WRITE :/ 'ENTERED STRING IS :', P_STR.
**
**FORMAT COLOR off.
**
**WRITE :/ 'CURRENT DATE IS ', SY-datum.
**WRITE :/ 'CURRENT TIME IS ', SY-uzeit.
**WRITE :/ 'CURRENT TIME IS ', SY-UNAME.
**WRITE :/ 'CURRENT TIME IS ', SY-REPID.
**WRITE :/ 'CURRENT TIME IS ', SY-PAGNO.




************************************   DAY 8 **********************************************

******* this program is for displaying all parameters in message box.

*****DATA : V_Z TYPE I.
*****
*****DATA : V_STR1 TYPE STRING,
*****       V_STR2 TYPE STRING,
*****       V_MSG TYPE STRING,
*****       V_TEMP TYPE STRING,  " DECLARED FOR REMOVING THE -VE SIGN.
*****       V_LEN TYPE I,  " DECLARED FOR REMOVING THE -VE SIGN.
*****       V_POS TYPE I.  " DECLARED FOR REMOVING THE -VE SIGN.
*****
*****
*****
*****SELECTION-SCREEN BEGIN OF BLOCK bk1 WITH FRAME TITLE t1.   " Selctiom screen block layout.
*****
*****SELECTION-SCREEN BEGIN OF LINE.
*****SELECTION-SCREEN COMMENT 8(20) lb1.
*****"8 MEANS STARTING FROM 8 FROM LEFT POSITION AND RESERVE 20 CHAR OR SPACES NOW FOR ENTIRE TEXT GIVING SOME VARIABLE NAME LB1
*****PARAMETERS : p_x TYPE i DEFAULT 20 OBLIGATORY.
*****
*****
*****SELECTION-SCREEN END OF LINE.
*****
*****SELECTION-SCREEN BEGIN OF LINE.
*****SELECTION-SCREEN COMMENT 8(20) lb2.
*****"8 MEANS STARTING FROM 8 FROM LEFT POSITION AND RESERVE 20 CHAR OR SPACES NOW FOR ENTIRE TEXT GIVING SOME VARIABLE NAME LB1
*****PARAMETERS : p_y TYPE i DEFAULT 15 OBLIGATORY.
*****
*****
*****SELECTION-SCREEN END OF LINE.
*****
*****SELECTION-SCREEN END OF BLOCK bk1.
*****
*****SELECTION-SCREEN BEGIN OF BLOCK bk2 WITH FRAME TITLE t2.
*****
*****
*****
*****PARAMETERS : p_r1 RADIOBUTTON GROUP grp1 USER-COMMAND fc1,
*****             p_r2 RADIOBUTTON GROUP grp1,
*****             p_r3 RADIOBUTTON GROUP grp1,
*****             p_r4 RADIOBUTTON GROUP grp1,
*****             p_r5 RADIOBUTTON GROUP grp1 DEFAULT 'X'.
*****
*****SELECTION-SCREEN END OF BLOCK bk2.
*****
*****INITIALIZATION.
*****
*****  lb1 = 'ENTER FIRST NUMBER'.
*****  lb2 = 'ENTER SECOND NUMBER'.
*****  t1 = 'ENTER INPUT VALUES'.
*****  t2 = 'ARITHMETIC OPERATIONS'.
*****
*******START-OF-SELECTION.
*******
*******IF P_R1 = 'X'.
*******  V_Z = P_X + P_Y.
*******   MESSAGE 'SUM IS :', V_Z TYPE.
*******
*******ELSEIF P_R2 = 'X'.
*******  V_Z = P_X - P_Y.
*******
*******  if V_Z >= 0.
*******    WRITE :/ 'DIFFERENCE IS :', V_Z.
*******  ELSE.
*******    WRITE :/ 'DIFFERENCE IS : -' NO-GAP,V_Z NO-SIGN LEFT-JUSTIFIED.
*******  ENDIF.
*******
*******
*******ELSEIF P_R3 = 'X'.
*******  V_Z = P_X * P_Y.
*******  WRITE :/ 'PRODUCT IS :', V_Z.
*******ELSEIF P_R4 = 'X'.
*******  V_Z = P_X / P_Y.
*******  WRITE :/ ' IS :', V_Z.
*******
*******ELSE.
*******  write :/ 'NONE OF THE BUTTON IS SELECTED'.
*******   MESSAGE 'NONE RADIOBUTTON SELECTED' TYPE 'I'.
*******ENDIF.
*****
*****AT SELECTION-SCREEN ON RADIOBUTTON GROUP grp1.
*****  CASE sy-ucomm.
*****    WHEN 'FC1'.
*****      IF p_r1 = 'X'.
*****        v_z = p_x + p_y.
*****        V_STR1 = 'SUM OF TWO NUMBERS IS ' .
*****        V_STR2 = V_Z.
*****        CLEAR V_MSG.
*****        CONCATENATE V_STR1 V_STR2 INTO V_MSG SEPARATED BY SPACE.
*****        MESSAGE V_MSG TYPE 'I'.
*****
*****
*****
*****      ELSEIF p_r2 = 'X'.
*****        v_z = p_x - p_y.
*****
*****        IF V_Z >= 0.
*****           V_STR1 = 'DIFFERENCE OF TWO NUMBERS IS :'.
*****           V_STR2 = V_Z.
*****           CLEAR V_MSG.
*****           CONCATENATE V_STR1 V_STR2 INTO V_MSG SEPARATED BY SPACE.
*****           MESSAGE V_MSG TYPE 'I'.
*****        ELSE.
*****          V_STR1 = 'DIFFERENCE OF TWO NUMBERS IS : -'.
*****          V_STR2 = V_Z.
*****          CLEAR V_TEMP.
*****          CONCATENATE V_STR1 V_STR2 INTO V_TEMP SEPARATED BY SPACE.
*****          V_LEN = STRLEN( V_TEMP ).
*****          V_POS = V_LEN - 1.
*****          CLEAR V_MSG.
*****          V_MSG = V_TEMP+0(V_POS).   """" 0(V_POS) MEANS LETS SAY IF V_TEMP WAS 24 THEN 0(V_POS ) MEANS IT WILL FETCH ALL VALUES FROM 0 TILL 24.
*****
*****        ENDIF.
*****        MESSAGE V_MSG TYPE 'I'.
*****
*****      ELSEIF p_r3 = 'X'.
*****        v_z = p_x * p_y.
*****        V_STR1 = 'PRODUCT OF TWO NUMBERS IS ' .
*****        V_STR2 = V_Z.
*****        CLEAR V_MSG.
*****        CONCATENATE V_STR1 V_STR2 INTO V_MSG SEPARATED BY SPACE.
*****        MESSAGE V_MSG TYPE 'I'.
*****      ELSEIF p_r4 = 'X'.
*****        v_z = p_x / p_y.
*****        V_STR1 = 'DIVISION OF TWO NUMBERS IS ' .
*****        V_STR2 = V_Z.
*****        CLEAR V_MSG.
*****        CONCATENATE V_STR1 V_STR2 INTO V_MSG SEPARATED BY SPACE.
*****        MESSAGE V_MSG TYPE 'I'.
*****
*****      ELSE.
*****        WRITE :/ 'NONE OF THE BUTTON IS SELECTED'.
*****        MESSAGE 'NONE RADIOBUTTON SELECTED' TYPE 'I'.
*****      ENDIF.
*****
*****
*****  ENDCASE.








************************************ DAY 9 *********************************************
*********** Check Box Program





****PARAMETERS : p_x TYPE i DEFAULT 20 OBLIGATORY,
****             p_y TYPE i DEFAULT 10 OBLIGATORY.
****
****
****DATA : v_z TYPE i.
****
****PARAMETERS : p_c1 AS CHECKBOX DEFAULT 'x' USER-COMMAND fc1,
****             p_c2 AS CHECKBOX USER-COMMAND fc2,
****             p_c3 AS CHECKBOX DEFAULT 'x' USER-COMMAND fc3,
****             p_c4 AS CHECKBOX USER-COMMAND fc4.
****
**********START-OF-SELECTION.
**********
**********    IF P_C1 = 'X'.
**********      V_Z = P_X + P_Y.
**********      WRITE :/ 'SUM IS :', V_Z.
**********    ENDIF.
**********
**********      IF P_C2 = 'X'.
**********      V_Z = P_X - P_Y.
**********      WRITE :/ 'DIFFERENCE IS :', V_Z.
**********    ENDIF.
**********
**********        IF P_C3 = 'X'.
**********      V_Z = P_X * P_Y.
**********      WRITE :/ 'PRODUCT IS :', V_Z.
**********    ENDIF.
**********
**********
**********        IF P_C4 = 'X'.
**********      V_Z = P_X / P_Y.
**********      WRITE :/ 'DIVISION IS :', V_Z.
**********    ENDIF.
**********
**********    END-OF-SELECTION.
**********
****
****
****AT SELECTION-SCREEN.
****
****  CASE sy-ucomm.
****    WHEN 'FC1'.
****      IF p_c1 = 'X'.
****        MESSAGE 'ADDITION CHECKBOX SELECTED :' TYPE 'I'.
****      ELSE.
****        MESSAGE 'ADDITION CHECKBOX DESELECTED : ' TYPE 'I'.
****      ENDIF.
****
****    WHEN 'FC2'.
****      IF p_c2 = 'X'.
****        MESSAGE 'DIFFERENCE CHECKBOX SELECTED :' TYPE 'I'.
****      ELSE.
****        MESSAGE 'DIFFERENCE CHECKBOX DESELECTED : ' TYPE 'I'.
****      ENDIF.
****
****
****    WHEN 'FC3'.
****            IF P_C3 = 'X'.
****        MESSAGE 'PRODUCT CHECKBOX SELECTED :' TYPE 'I'.
****      ELSE.
****        MESSAGE 'PRODUCT CHECKBOX DESELECTED : ' TYPE 'I'.
****      ENDIF.
****
****    WHEN 'FC4'.
****            IF P_C1 = 'X'.
****        MESSAGE 'DIVISION CHECKBOX SELECTED :' TYPE 'I'.
****      ELSE.
****        MESSAGE 'DIVISION CHECKBOX DESELECTED : ' TYPE 'I'.
****      ENDIF.
****
****    WHEN OTHERS.
****      MESSAGE 'NONE OF THE CHECKBOXES SELECTED OR DESELECTED' TYPE 'I'.
****
****
****  ENDCASE.




******************************** DAY 9 PROGRAM 2 ****************************************
***************** PROGRAM FOR PUSHBUTTONS *****************

****PARAMETERS : p_x TYPE i DEFAULT 20 OBLIGATORY,
****             p_y TYPE i DEFAULT 10 OBLIGATORY,
****             p_z TYPE i.
****
****
****
****SELECTION-SCREEN SKIP 2.
****SELECTION-SCREEN PUSHBUTTON /6(12) b1 USER-COMMAND fc1.     """"" CAN USE /6(12) FOR NEW LINE
****SELECTION-SCREEN PUSHBUTTON 20(12) b2 USER-COMMAND fc2.
****SELECTION-SCREEN SKIP 2.
****SELECTION-SCREEN PUSHBUTTON 10(12) b3 USER-COMMAND fc3.
****
****
****
****INITIALIZATION.
****
****  b1 = 'ADDITION'.
****  b2 = 'CLEAR'.
****  b3 = 'EXIT'.
****
****
****AT SELECTION-SCREEN.
****
****  CASE sy-ucomm.
****
****    WHEN 'FC1'.
****      p_z = p_x + p_y.
****
********      MESSAGE 'The Addition Button Is Selected And Addition Is Displayed In The Addition Tab.' TYPE 'I'.
****
****    WHEN 'FC2'.
********      MESSAGE 'Clear Button Is Selected' TYPE 'I'.
****      CLEAR:P_X,
****            p_Y,
****            p_z.
****
****    WHEN 'FC3'.
********      MESSAGE 'Exit Button Is Selected You Will Be Exiting From The Screen Thank You.' TYPE 'I'.
****      LEAVE PROGRAM.
****
****  ENDCASE.



*********************** Q - Find if there is any std. program defined by sap for showing activation error for the missalignment of pushbutton.





******************************  DAY 10  ******************************************\
"""""" SIMPLE CODE FOR MULTIPLICATION OF NUMBERS.

********PARAMETERS : P_X TYPE I OBLIGATORY DEFAULT 5.
********
********DATA : V_Y TYPE I VALUE 1,              """" VARIABLE FOR INCREASING THE 2ND INDEX IN MULTIPLICATION.
********       V_RES TYPE I.              """" VARIABLE FOR STORING THE PRODUCT VALUE.
********
********
********WHILE V_Y <= 10.
********  V_RES = P_X * V_Y.
********  WRITE :/ P_X,'*',V_Y,'=',V_RES.
********  V_Y = V_Y + 1.
********ENDWHILE.
********
********ULINE.
********
********V_Y = 1.
********
********WHILE V_Y <= 10.
********  IF V_Y NE 5.                          """" NE MEANS NOT EQUAL TO
********  V_RES = P_X * V_Y.
********  WRITE :/ P_X,'*',V_Y,'=',V_RES.
********  ENDIF.
********  V_Y = V_Y + 1.
********
********ENDWHILE.
********
********
********ULINE.
********
********write :/ 'this is having continue statemment'.
********V_Y = 1.
********
********WHILE V_Y <= 10.
********  IF V_Y EQ 5.
********    V_Y = V_Y + 1.                          """" NE MEANS NOT EQUAL TO     """" IF NOT INCREMENTED IT WILL GO FOR INFINITE LOOP
********    CONTINUE.
********  ENDIF.
********  V_RES = P_X * V_Y.
********  WRITE :/ P_X,'*',V_Y,'=',V_RES.
********  V_Y = V_Y + 1.
********
********ENDWHILE.
********
********uline.
********
********
********WRITE :/ 'EXIT STATEMENT IN THE LOOP' .
********V_Y = 1.
********
********WHILE V_Y <= 10.
********  IF V_Y EQ 5.
********    V_Y = V_Y + 1.
********    EXIT.
********  ENDIF.
********  V_RES = P_X * V_Y.
********  WRITE :/ P_X,'*',V_Y,'=',V_RES.
********  V_Y = V_Y + 1.
********
********ENDWHILE.
********
********WRITE :/ 'EXIT STATEMENT IN THE LOOP'.
********
********
********ULINE.
********V_Y = 1.
********
********DO 20 TIMES.
********  V_RES = P_X * V_Y.
********  WRITE :/ P_X,'*',V_Y,'=',V_RES.
********  V_Y = V_Y + 1.
***********  IF V_Y > 10.
***********    EXIT.
***********  ENDIF.
********
********
********ENDDO.
********
********WRITE :/  'AFTER DO ENDDO'.



********************************* Day 11 ******************************************



"""""""" Submit Keyword Is Used For Calling A Program From Another Program


********WRITE :/ 'begin of program ....'.
****************SUBMIT ZCOREABAP_01_1.
********                                  """""""""""""AND RETURN KEYWORD USED TO RETURN BACK TO THE ORIGINAL PROGRAM.
********
********SUBMIT ZCOREABAP_01_1 AND RETURN.
********
********
********WRITE :/ 'end  of program.....'.




*************************************** DAY 11 PROGRAM 2 *******************************************
*********
*********
*********""""""""""""""""""""""""  PROGRAM FOR USING THE MEMORY ID """"""""""""""""""""""""""""""""""""""
*********
*********
*********PARAMETERS : P_X TYPE I DEFAULT 10,
*********             P_Y TYPE I DEFAULT 10.
*********
*********
*********
*********EXPORT P_X TO MEMORY ID 'A1'.
*********
*********EXPORT P_Y TO MEMORY ID 'A2'.
*********
*********
*********SUBMIT ZCOREABAP_01_02 AND RETURN.
*********
*********
*********""""""""""""""""""""""""""""""""""""""""   FOR IMPORTING
*********DATA : V_Z TYPE I.
*********
*********IMPORT V_Z FROM MEMORY ID 'A3'.
*********
*********
*********
*********WRITE :/ 'THE SUM OF THE TWO NUMBERS IS:', V_Z.  """"""""""""""""""""""""""""""""""""""""""" THIS MEMORY IS ABAP MEMORY










******************************************* Day 12 *****************************************************

"""""""""""""""""""""""""""""""""""""""""""" Declaring Structures And Accessing Structure Fields """""""""""""""""""""""""""""""""""""


************ Syntax1  For Declaring Structure.
********DATA : BEGIN OF emp,
********         empno        TYPE i,
********         ename(20)    TYPE c,
********         empdesig(20) TYPE c,
********
********       END OF emp.
********
********
********WRITE :'EMP STRUCTURE IS ...'.
********
********WRITE : emp-empno, emp-ename, emp-empdesig.
********
********emp-empno = 1.
********emp-ename = 'RAHUL PILLAI '.
********emp-empdesig = 'MANAGER'.
********
********WRITE :/ 'EMP STRUCTURE IS :'.
********
********WRITE : emp-empno, emp-ename, emp-empdesig.
********
********
********
********
********
********
********"""""""""""""""""""""" Syntax 2 For Declaring The Structure """""""""""""""""""
********
********DATA emp2 LIKE emp.
********
********WRITE :/ 'EMP2 STRUCTURE IS :'.
********
********WRITE : emp2-empno, emp2-ename, emp2-empdesig.
********
********emp2 = emp.
********
********WRITE :/ 'EMP2 STRUCTURE AFTER ASSINGING :'.
********
********WRITE : emp2-empno, emp2-ename, emp2-empdesig.
********
********
********CLEAR emp2.
********
********WRITE :/ 'EMP2 STRUCTURE AFTER USING CLEAR STATEMENT :'.
********
********WRITE : emp2-empno, emp2-ename, emp2-empdesig.
********
********
********MOVE emp TO emp2.
********WRITE :/ 'EMP2 STRUCTURE AFTER USING MOVE STATEMENT :'.
********
********WRITE : emp2-empno, emp2-ename, emp2-empdesig.
********
********
********
********MOVE-CORRESPONDING emp TO emp2.
********WRITE :/ 'EMP2 STRUCTURE AFTER USING MOVE CORRESPONDING STATEMENT :'.
********
********WRITE : emp2-empno, emp2-ename, emp2-empdesig.
********
********
********ULINE.
********
********
********DATA : BEGIN OF DEPT,
********          deptno type I,
********          DNAME(10) TYPE C,
********       END OF DEPT.
********
********WRITE :/ DEPT-DEPTNO, DEPT-DNAME.
********
********
********DEPT = EMP.
********
********
********WRITE :/ 'DEPT STRUCTURE AFTER USING ASSIGNMENT WITH MORE NUMBER OF FIELDS IN EMP STRUCTURE'.
********
********WRITE :/ DEPT-DEPTNO, DEPT-DNAME.
********
********
********CLEAR DEPT.
********
********WRITE :/ 'DEPT STRUCTURE AFTER USING CLEAR :'.
********WRITE :/ DEPT-DEPTNO, DEPT-DNAME.
********
********
********MOVE EMP TO DEPT.
********WRITE :/ 'DEPT STRUCTURE AFTER USING MOVE :'.
********WRITE :/ DEPT-DEPTNO, DEPT-DNAME.
********
********CLEAR DEPT.
********
********WRITE :/ 'DEPT STRUCTURE AFTER USING CLEAR :'.
********WRITE :/ DEPT-DEPTNO, DEPT-DNAME.
********
********MOVE-CORRESPONDING EMP TO DEPT.                                               """"""""""""""""""""""" MOVE CORRESPONDING TRIES TO COPY DATA WHICH HAS THE SAME NAME.
********WRITE :/ 'DEPT STRUCTURE AFTER USING MOVE CORRESPONDING :'.                   """"""""""""""""""""""" THATS WHY NO DATA SINCE NO MATCHING FIELD NAME.
********WRITE :/ DEPT-DEPTNO, DEPT-DNAME.
********
********
********
********ULINE.
********
********
********DATA : BEGIN OF DEPT2,
********        LOC(15) TYPE C,
********        EMPNO TYPE I,
********        DNAME TYPE I,
********        DEPTNO TYPE I,
********       END OF DEPT2.
********
********WRITE :/ 'DEPT2 STRUCTURE '.
********
********WRITE :/ DEPT2-LOC, DEPT2-EMPNO, DEPT2-DEPTNO.
********
********""""""""""""""""""""""DEPT2 = EMP.      """""""""" SYNTAX ERROR SINCE DATA TYPE LAYOUT NOT SAME.
********"""""""""""""""""""""MOVE EMP TO DEPT2. """""""""" SYNTAX ERROR
********
********MOVE-CORRESPONDING EMP TO DEPT2.
********
********""""""""""""""""""""""""" BUT IT IS RECOMMENDED NOT TO USE MOVE CORRESPONDING SINCE IT WILL DEGRADE THE PERFORMANCE SINCE IT WILL CHECK ALL THE FIELDS FROM TARGET STRUCTURE
********WRITE :/ 'DEPT2 STRUCTURE AFTER USING MOVE CORRESPONDING :'.
********WRITE :/ DEPT2-LOC, DEPT2-EMPNO, DEPT2-DNAME, DEPT2-DEPTNO.                       """""""""""""""""""""""" IT DOESN'T BOTHER ABOUT SEQUENCE, DATA TYPE, NO OF FIELDS.
********
********
********
********
********
********""""""""""""""""""""" Showing How Move Corresponding Statment Will Lead To Runtime Error """"""""""""""""""""""""""""""""""""""
********
********ULINE.
********
*****************DATA : BEGIN OF DEPT3,
*****************        LOC(15) TYPE C,
*****************        EMPNO TYPE I,
*****************        eNAME TYPE I,
*****************       END OF DEPT3.
*****************
*****************
*****************
*****************WRITE :/ 'DEPT3 STRUCTURE AFTER USING MOVE CORRESPONDING :'.
*****************WRITE :/ DEPT3-LOC, DEPT3-EMPNO, DEPT3-ENAME.
*****************
*****************
*****************MOVE-CORRESPONDING EMP TO DEPT3.                                     """""""""""""""""" THIS WOULD CAUSE RUNTIME ERROR SINCE IT WILL NOT CHECK THE DATA TYPE WHILE COPYING THE FIELDS





***************************************************** DAY 13 **************************************************************



"""""""""""""""""""" NESTED STRUCTURES """""""""""""""""""""""""""""""""""""
*******DATA : BEGIN OF emp,
*******         empno        TYPE i,
*******         ename(20)    TYPE c,
*******         BEGIN OF dept,
*******           deptno    TYPE i,
*******           dname(20) TYPE c,
*******         END OF dept,
*******         empdesig(20) TYPE c,
*******       END OF emp.
*******
*******
*******
*******emp-empno = 11.
*******emp-ename = 'RAJU'.
*******emp-dept-deptno = 122.
*******emp-empdesig = 'MANAGER'.
*******
*******WRITE :/(20) 'EMPLOYEE NUMBER      : ', emp-empno LEFT-JUSTIFIED,
*******       /(20) 'EMPLOYEE NAME        : ', emp-ename,
*******       /(20) 'DEPARTMENT NUMBER    : ', emp-dept-deptno LEFT-JUSTIFIED,
*******       /(20) 'DEPARTMENT NAME      : ', emp-dept-dname,
*******       /(20) 'EMPLOYEE DESIGNATION : ', emp-empdesig.



************DATA : BEGIN OF dept,
************         deptno    TYPE i,
************         dname(20) TYPE c,
************       END OF dept.
************
************************DATA : BEGIN OF EMP,
************************          EMPNO TYPE I,
************************          ENAME(20) TYPE C,
************************          DEPTNO TYPE I,
************************          DNAME(20) TYPE C,
************************          EMPDESIG(25) TYPE C,
************************       END OF EMP.                                 """"""""""""""""   (OR)
************
************
************DATA : BEGIN OF emp,                                                  """"""""""""""""""""   INCLUDING PRE DEFINED STRUCTURE
************         empno     TYPE i,
************         ename(20) TYPE c.
************        INCLUDE STRUCTURE dept.
************DATA:  empdesig(25) TYPE c,
************       END OF emp.
************
************
************emp-empno = 5.
************emp-ename = 'AKANKSHA'.
************emp-deptno = 10.
************emp-dname = 'ABAP'.
************emp-empdesig = 'MANAGER'.
************
************
************WRITE :/ emp-empno,
************       / emp-ename,
************       / emp-deptno,
************       / emp-dname,
************       / emp-empdesig.
************


""""""""""""""""""""""""""""""  FOR DECLARING STANDARD STRUCTURE """"""""""""""""""





TYPES : BEGIN OF gty_emp,
          empno        TYPE i,
          ename(20)    TYPE c,
          empdesig(15) TYPE c,
        END OF gty_emp.


DATA : wa_emp1 TYPE gty_emp.

wa_emp1-empno = 6.
wa_emp1-ename = 'RAHUL'.
wa_emp1-empdesig = 'MANAGER'.



WRITE :/ 'WA_EMP1 STRUCTURE'.

WRITE :/ wa_emp1-empno,  wa_emp1-ename, wa_emp1-ename.



""""""""""""""""" CAN CREATE ANY NUMBER OF WORK AREA FOR THE SAME TEMPLATE

ULINE.

DATA : wa_emp2 TYPE gty_emp.

WRITE :/ 'WA_EMP2 STRUCTURE'.

WRITE :/ wa_emp1-empno,  wa_emp1-ename, wa_emp1-ename.


wa_emp2 = wa_emp1.

WRITE :/ 'WA_EMP2 STRUCTURE AFTER ASSIGING WA_EMP1 STRUCTURE'.

WRITE :/ wa_emp1-empno,  wa_emp1-ename, wa_emp1-ename.
