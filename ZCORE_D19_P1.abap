REPORT ZCORE_D19_P1.

********* DAY 19 PROG 1 *****************
"""" MODULARIZATION TECHNIQUES

"""" TOPICS - SUBROUTINES(PERFORM-FORM-ENDFORM) , PASS BY REFERENCE , PASS BY VALUE (USING VALUE KEYWORD)





"""" MODULARIZATION - PROCESS OF BREAKING THE PROGRAMS INTO INDIVIDUAL BLOCKS.
"""" WAYS TO ACHIVE MODULIZATION - 1) SUBROUTINES , 2)INCLUDE PROGRAMS, 3)FUNCTION MODULES, 4)METHODS , 5)MACROS.

"""" ADVANTAGES OF MODULIRIZATION - INCREASES THE REUSEABILITY, MAINTENANCE COST IS DECREASED , INCREASES THE READABILITY OF THE PROGRAM , EFFICIENT CONTROL IN PROGRAM FLOW.



"""" 1) SUBROUTINE -  COLLECTION OF STATEMENTS WHICH CAN BE CALLED ONLY ONCE AND CAN BE CALLED FOR ANY NUMBER OF TIMES
""""                  DEFINED USING PERFORM STATEMENT


""""" DECLARING VARIBLE FOR SUBROUTINE WITH PARAMENTER"""""

PARAMETERS : P_X TYPE I DEFAULT 20,
             P_Y TYPE I DEFAULT 10.




FORMAT COLOR 1.
WRITE :/ 'HELLO'.
PERFORM SUB1.                            """" SUBROUTINE
FORMAT COLOR OFF.


FORMAT COLOR 2.
WRITE :/ 'WELCOME'.
PERFORM SUB1.
FORMAT COLOR OFF.



FORMAT COLOR 3.
WRITE :/ 'HI'.
PERFORM SUB1.
FORMAT COLOR OFF.

FORMAT COLOR 4.
WRITE :/ 'BYE'.
PERFORM SUB1.
FORMAT COLOR OFF.



ULINE.


"""" SUBROUTINE WITH PARAMETERS


"""" NOTE - WHENEVER WE ARE PASSING STD. DATA TYPES AS PARAMETERS NEED TO USE KEYWORD CALLED AS -- USING.

PERFORM SUB2 USING P_X P_Y.                """" USING - IS USED BECAUSE OF USING STD. DATA TYPE WHICH IS INTEGER HERE.
PERFORM SUB2 USING 30 40.                  """" CAN DIRECTLY PASS THE VALUES ALSO
CLEAR: P_X, P_Y.

P_X = 45.
P_Y = 30.

PERFORM SUB2 USING P_X P_Y.                """" THIS SHOWS WE CAN CALL SUBROUTINES ANY NUMBER OF TIMES.

ULINE.

"""""""" PASS BY VALUE AND PASS BY REFERENCE """"""""""
CLEAR : P_X, P_Y.

P_X = 10.
P_Y = 20.

WRITE :/ 'PASS BY REFERENCE :'.
WRITE :/ 'P_X AND P_Y BEFORE CALLING SUBROUTINE: ',P_X,P_Y.            """" THE ADDRESS OF ACTUAL PARAMETERS ARE COPIED INTO FORMAL PARAMETERS

PERFORM SUB4 USING P_X P_Y.
WRITE :/ 'P_X AND P_Y AFTER CALLING SUBROUTINE: ',P_X,P_Y.

ULINE.


"""""""" PASS BY VALUE """""""""""""
CLEAR: P_X,P_Y.

P_X = 20.
P_Y = 40.

WRITE :/ 'P_X AND P_Y BEFORE CALLING SUBROUTINE: ',P_X,P_Y.

PERFORM SUB5 USING P_X P_Y.

WRITE :/ 'P_X AND P_Y AFTER CALLING SUBROUTINE: ',P_X,P_Y.














FORM SUB2 USING P_X P_Y   .                   """" FORMAL PARAMETERS - THE PARAMETERS MENTIONED AS PART OF THE DEFINITION. THE FORMAL PARAMETERS CAN HAVE SAME NAME AS WELL AS DIFFERENT NAME.
  DATA : LV_Z TYPE I.                     """" LOCAL VARIABLE
  LV_Z = P_X + P_Y.
  FORMAT COLOR 5.
  WRITE :/ 'THE SUM IS :',LV_Z.
  FORMAT COLOR OFF.
ENDFORM.

FORM SUB1.                                """" SUBROUTINE DEFINITION
WRITE :/ 'THIS IS CORE ABAP TRAINING'.
WRITE :/ 'THIS IS OOPS ABAP TRAINING'.
WRITE :/ 'THIS IS CROSS APPS TRAINING'.
ENDFORM.

FORM SUB4 USING K1 K2.                      """" BY DEFAULT PARAMETERS ARE PASS BY REFERENCE
                                            """" IN PASS BY REFERENCE THE ADDRESS OF ACTUAL PARAMETER ARE COPIED TO FORMAL PARAMETER MEANS FORMAL PARAMETER WILL POINT TO ACTUAL PARAMETER
  DATA : K3 TYPE I.                         """" LOCAL VARIABLE
  K3 = K1.
  K1 = K2.                                  """" IT IS NOT SWAPPING FORMAL PARAMETERS BUT ITS SWAPPING ACTUAL PARAMETERS.
  K2 = K3.



ENDFORM.


FORM SUB5 USING VALUE(K1) VALUE(K2).        """" PASS BY VALUE FORM
  DATA : K3 TYPE I.                         """" LOCAL VARIABLE
  K3 = K1.
  K1 = K2.                                  """"
  K2 = K3.


 ENDFORM.