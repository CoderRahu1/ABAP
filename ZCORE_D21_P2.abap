REPORT ZCORE_D21_P2.


******** DAY 20 PROG 2 FOR EXTERNAL SUBROUTINE ******************
"""" TOPICS - EXTERNAL SUBROUTINE

FORM SUB1.
  WRITE :/ 'INSIDE SUBROUTINE SUB1 IN ZCORE_D21_P1 '.

ENDFORM.


FORM SUB2 USING X Y.
  WRITE :/ 'INSIDE SUBROUTINE '.
  DATA Z TYPE I.
  Z = X + Y.
  WRITE :/ 'SUM IS :',Z.
  WRITE :/ 'END OF SUBROUTINE SUB2'.


ENDFORM.
