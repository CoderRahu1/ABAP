FUNCTION ZCORE_D22_P3.
*"----------------------------------------------------------------------
*"*"Local Interface:
*"  IMPORTING
*"     REFERENCE(I_X) TYPE  I
*"     REFERENCE(I_Y) TYPE  I
*"----------------------------------------------------------------------

DATA : LV_Z TYPE I.              """" NOTE - TO ADD I_X AND I_Y AS IMPORTING PARAMETERS FOR THE FUNCTION MODULE.

LV_Z = I_X + I_Y.

WRITE :/ 'SUM IS ',LV_Z.




ENDFUNCTION.
