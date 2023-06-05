REPORT ZCORE_D24_P1.

*************** DAY 24 PROG 1 *************************
""""" TOPICS - 1 ) PARAMETERS AS LISTBOX. 2) PUSHBUTTON. 3)VRM_SET_VALUES - STD. FUNCTION FOR LISTBOX.


**** TYPE-POOLS VRM. """" NOTE - REQUIRED IN 6.0 AND BEFORE VERSIONS


*PARAMETERS P_COURSE(20) TYPE C AS LISTBOX.     """" SYNATAX ERROR

PARAMETERS P_COURSE(20) TYPE C AS LISTBOX VISIBLE LENGTH 20.

SELECTION-SCREEN SKIP 5.

SELECTION-SCREEN PUSHBUTTON 32(35) B1 USER-COMMAND FC1.


"""" NOTE - EVERY VALUE IN THE DROPDOWN WILL BE ASSOCIATED WITH SOME KEY

DATA : GT_VALUE TYPE TABLE OF VRM_VALUE,
       GS_VALUE TYPE VRM_VALUE.                     """" NOTE - IF YOU ARE USING 6.1 VERSION OR BELOW IT MAY SHOW ERROR THAT VRM_VALUES IS NOT FOUND.


INITIALIZATION.

B1 = 'IDENTIFY'.


IF GT_VALUE IS NOT INITIAL. """" IF GT_VALUE IS NOT EMPTY
  PERFORM DISPLAYDROPDOWN.
ENDIF.


AT SELECTION-SCREEN.                                 """" EVENT WHEN THE USER CLICKS ON THE PUSHBUTTON
   CASE SY-UCOMM.
     WHEN 'FC1'.
       IF P_COURSE = 'K1'.
         MESSAGE 'THIS IS CORE ABAP' TYPE 'I'.
       ELSEIF P_COURSE = 'K2'.
         MESSAGE 'THIS IS OOPS ABAP' TYPE 'I'.
       ELSEIF P_COURSE = 'K3'.
         MESSAGE 'THIS IS CROSS APPS' TYPE 'I'.
       ELSE.
         MESSAGE 'NONE IS SELECTED' TYPE 'I'.
       ENDIF.
   ENDCASE.





PERFORM PREPAREDROPDOWN.



"""" NOTE IN ABAP WHENEVER WE HAVE DROPDOWN REQUIREMENT THERE IS STD. FUNCTION MODULE
"""" NOTE -  BEFORE CALLING F.M NEED TO ANALYZE THE SIGNATURE OF THE FUNCTION MODULE
"""" NOTE - WHEREVER YOU SEE OCCURS KEYWORD THAT MEANS ITS INTERNAL TABLE



FORM preparedropdown .
  """" FILL DATA IN THE WORK AREA THEN USE APPENED OR INSERT STATEMENT
  CLEAR GS_VALUE.
  GS_VALUE-KEY = 'K1'.
  GS_VALUE-TEXT = 'CORE ABAP'.
  APPEND GS_VALUE TO GT_VALUE.

    CLEAR GS_VALUE.
  GS_VALUE-KEY = 'K2'.
  GS_VALUE-TEXT = 'OOPS ABAP'.
  APPEND GS_VALUE TO GT_VALUE.

    CLEAR GS_VALUE.
  GS_VALUE-KEY = 'K3'.
  GS_VALUE-TEXT = 'CROSS APPS'.
  APPEND GS_VALUE TO GT_VALUE.


ENDFORM.



FORM displaydropdown .
  CALL FUNCTION 'VRM_SET_VALUES'
    EXPORTING
      id                    = 'P_COURSE'
      values                = GT_VALUE
   EXCEPTIONS
     ID_ILLEGAL_NAME       = 1
     OTHERS                = 2.

  IF sy-subrc <> 0.
* Implement suitable error handling here
  ENDIF.

  IF SY-SUBRC = 1.
    MESSAGE 'ILLEGAL DROP DOWN LIST NAME' TYPE 'I'.
  ELSEIF SY-SUBRC = 2.
    MESSAGE 'UNKNOWN ERROR' TYPE 'I'.
  ENDIF.


ENDFORM.
