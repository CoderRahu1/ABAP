REPORT ZCORE_D25_P1.

*************** DAY 25 PROG 1 *************************
""""" TOPICS - 1 ) PARAMETERS AS LISTBOX. 2) CHECKBOX. 3)VRM_SET_VALUES - STD. FUNCTION FOR LISTBOX, 4)RADIOBUTTON, 5)COMMENT, 6)AT SELECTION SCREEN, 7)AT SELECTION SCREEN OUTPUT, 8) SCREEN INTERNAL TABLE AND ITS FIELD INVISIBLE.
""""" PROJECT - TO DEVELOP A SCREEN WITH LISTBOX,CHECKBOX,RADIOBUTTON,COMMENT AND THEN TO HIDE THE UNSELECTED FIELD.





PARAMETERS P_ABC(15) TYPE C AS LISTBOX VISIBLE LENGTH 12.

DATA : GT_VALUE TYPE TABLE OF VRM_VALUE,
       GS_VALUE TYPE VRM_VALUE.

SELECTION-SCREEN BEGIN OF BLOCK BK1 WITH FRAME TITLE T1.

  PARAMETERS : P_C1 AS CHECKBOX,                                          """" FOR CHANGING NAME USE > GOTO > TEXT ELEMENTS > SELECTION TEXT
               P_C2 AS CHECKBOX,
               P_C3 AS CHECKBOX.


  SELECTION-SCREEN END OF BLOCK BK1.

SELECTION-SCREEN BEGIN OF BLOCK BK2 WITH FRAME TITLE T2.

  PARAMETERS : P_R1 RADIOBUTTON GROUP GRP1,                              """" FOR CHANGING NAME USE > GOTO > TEXT ELEMENTS > SELECTION TEXT
               P_R2 RADIOBUTTON GROUP GRP1,
               P_R3 RADIOBUTTON GROUP GRP1.


  SELECTION-SCREEN END OF BLOCK BK2.



SELECTION-SCREEN BEGIN OF BLOCK BK3 WITH FRAME TITLE T3.
  SELECTION-SCREEN COMMENT 6(15) LB1.
  SELECTION-SCREEN COMMENT /6(15) LB2.
  SELECTION-SCREEN COMMENT /6(15) LB3.

  SELECTION-SCREEN END OF BLOCK BK3.


"""" DECLARING A VARIBLE FOR HANDLING AT SELECTION SCREEN OUTPUT """"

DATA GV_FLAG TYPE I.









INITIALIZATION.
  PERFORM PREPAREVALUES.
  PERFORM INVISIBLEBLOCKS.
  T1 = 'COURSES'.
  T2 = 'INSTITUES'.
  T3 = 'LOCATIONS'.
  LB1 = 'HYDERABAD'.
  LB2 = 'MUMBAI'.
  LB3 = 'DELHI'.

AT SELECTION-SCREEN.                 """" THIS EVENT IS TRIGGERED WHEN THE USER CLICKS ENTER KEY

  IF P_ABC = 'K1'.
    GV_FLAG = 1.


  ELSEIF P_ABC = 'K2'.
    GV_FLAG = 2.


  ELSEIF P_ABC = 'K3'.
    GV_FLAG = 3.


  ENDIF.

AT SELECTION-SCREEN OUTPUT.          """" THIS IS THE LAST EVENT TRIGGERED
  IF GV_FLAG = '1'.
    PERFORM VISIBLEBLOCK1.

  ELSEIF GV_FLAG = 2.
    PERFORM VISIBLEBLOCK2.

  ELSEIF GV_FLAG = 3.
    PERFORM VISIBLEBLOCK3.
  ENDIF.







FORM preparevalues.                                         """" PREPARE VALUES
  CLEAR GS_VALUE.
  GS_VALUE-KEY = 'K1'.
  GS_VALUE-TEXT = 'COURSES'.
  APPEND GS_VALUE TO GT_VALUE.

  CLEAR GS_VALUE.
  GS_VALUE-KEY = 'K2'.
  GS_VALUE-TEXT = 'INSTITUTES'.
  APPEND GS_VALUE TO GT_VALUE.

  CLEAR GS_VALUE.
  GS_VALUE-KEY = 'K3'.
  GS_VALUE-TEXT = 'LOCATIONS'.
  APPEND GS_VALUE TO GT_VALUE.


CALL FUNCTION 'VRM_SET_VALUES'                             """" STD. FUNCTION CALL
  EXPORTING
    id                    = 'P_ABC'
    values                = GT_VALUE
 EXCEPTIONS
   ID_ILLEGAL_NAME       = 1
   OTHERS                = 2
          .
IF sy-subrc EQ 1.
* Implement suitable error handling here
  MESSAGE 'EXCEPTION ID ILLEGAL NAME RAISED' TYPE 'I'.
ELSEIF SY-SUBRC = 2.
  MESSAGE 'UNKOWN EXCEPTION' TYPE 'I'.

ENDIF.

ENDFORM.



FORM invisibleblocks .   """" SUBROUTINE TO HIDE BLOCKS
  LOOP AT SCREEN.        """" INTERNAL TABLE OF SCREEN CREATED BY STANDARD SAP CONTAINING ALL THE SCREEN FIELDS

    IF SCREEN-NAME = 'BK1' OR
       SCREEN-NAME = 'T1' OR
       SCREEN-NAME = 'P_C1' OR
       SCREEN-NAME = 'P_C2' OR
       SCREEN-NAME = 'P_C3' OR
       SCREEN-NAME = 'BK2' OR
      SCREEN-NAME = 'T2' OR
       SCREEN-NAME = 'P_R1' OR
       SCREEN-NAME = 'P_R2' OR
       SCREEN-NAME = 'P_R3' OR
       SCREEN-NAME = 'BK3' OR
      SCREEN-NAME = 'T3' OR
       SCREEN-NAME = 'LB1' OR
       SCREEN-NAME = 'LB2' OR
       SCREEN-NAME = 'LB3'.

      SCREEN-INVISIBLE = '1'.              """" UPDATES IN THE HEADER

      MODIFY SCREEN.                       """" UPDATES CORRESPONDING ROWS IN THE BODY OF INTERNAL TABLE.


    ENDIF.






  ENDLOOP.

ENDFORM.


"""" NOTE - 1) THE MOMENT WE SELECT THE VALUE IN THE LIST BOX THE EVENT AT SELECTION SCREEN EVENT IS TRIGGERED AND THEN THE EVENT AT SELECTION SCREEN OUTPUT
""""        2) WE SHOULD ALWAYS WRITE THE SCREEN REFRESHING LOGIC IN THE FINAL EVENT.

FORM visibleblock1 .
  LOOP AT SCREEN.
    IF SCREEN-NAME = 'BK1' OR
       SCREEN-NAME = 'T1' OR
       SCREEN-NAME = 'P_C1' OR
       SCREEN-NAME = 'P_C2' OR
       SCREEN-NAME = 'P_C3' OR
       SCREEN-NAME = 'P_ABC'.


        SCREEN-INVISIBLE = '0'.
        MODIFY SCREEN.
     ELSE.
       SCREEN-INVISIBLE = '1'.
       MODIFY SCREEN.

   ENDIF.
  ENDLOOP.
ENDFORM.

FORM visibleblock2 .
  LOOP AT SCREEN.
    IF SCREEN-NAME = 'BK2' OR
       SCREEN-NAME = 'T2' OR
       SCREEN-NAME = 'P_R1' OR
       SCREEN-NAME = 'P_R2' OR
       SCREEN-NAME = 'P_R3' OR
       SCREEN-NAME = 'P_ABC'.

        SCREEN-INVISIBLE = '0'.
        MODIFY SCREEN.
    ELSE.
       SCREEN-INVISIBLE = '1'.
       MODIFY SCREEN.
   ENDIF.
  ENDLOOP.
ENDFORM.


FORM visibleblock3 .
  LOOP AT SCREEN.
    IF SCREEN-NAME = 'BK3' OR
       SCREEN-NAME = 'T3' OR
       SCREEN-NAME = 'LB1' OR
       SCREEN-NAME = 'LB2' OR
       SCREEN-NAME = 'LB3' OR
       SCREEN-NAME = 'P_ABC'.

        SCREEN-INVISIBLE = '0'.
        MODIFY SCREEN.
    ELSE.
       SCREEN-INVISIBLE = '1'.
       MODIFY SCREEN.
   ENDIF.
  ENDLOOP.
ENDFORM.