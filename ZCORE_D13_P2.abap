REPORT ZCORE_D13_P2.

************************** FIELD SYMBOLS ******************************
"""""""" FIELD SYMBOL :  IS A SPECIAL VARIABLE WHICH IS CAPABLE OF STORING ANY KIND OF DATA AND IN SHOULD BE ALWAYS ENCLOSED IN ANGULAR BRACKETS AND DECLARED USING FIELD-SYMBOLS.
""""""""                 WHENEVER YOU WANT TO ASSIGN A VARIBLE VALUE IN A FIELD SYMBOL USE ASSIGN KEYWORD. ONCE A VARIBLE IS ASSIGNED TO THE FIELD SYMBOL A LINK IS ESTABLISHED BETWEEN VARIBLE AND FIELD SYMBOL.
""""""""                 






DATA : V_X TYPE I VALUE 10.                       """"""""""" NORMAL INTEGER VARIABLE

********FIELD-SYMBOLS ABC.                              """"""""""" SYNTAX ERROR
FIELD-SYMBOLS <ABC>.                                     """"""""""" DECLARING VARIABLE


WRITE :/ 'V_X IS ',V_X,
       / '<ABC> IS ' , <ABC>.

********<ABC> = V_X.                                             """"""""""" RUNTIME ERROR DON'T USE ASSIGNMENT OPERATOR

ASSIGN V_X TO <ABC>.                                   """"""""""""  HERE V_X IS THE REFERENCED VARIBLE

WRITE :/ 'V_X IS ',V_X,
       / '<ABC> IS ' , <ABC>.


ULINE.

"""""""""""""""""""" NOW ANY CHANGE MADE TO V_X WILL AUTOMATICALLY REFLECT THE OTHER VARIABLE


V_X = 20.

WRITE :/ 'V_X IS   ',V_X,
       / '<ABC> IS ',<ABC>.


ULINE.

<ABC> = 30.

WRITE :/ 'V_X IS   ',V_X,
       / '<ABC> IS ',<ABC>.




********************* NOW CHECKING STRING *******************************

ULINE.

DATA : V_STR TYPE STRING VALUE 'RAHUL PILLAI'.

ASSIGN V_STR TO <ABC>.

WRITE :/ 'V_X IS   ',V_X,
       / '<ABC> IS ',<ABC>,
       / 'V_STR IS ',V_STR.

ULINE.
V_STR = 'RAHUL'.

WRITE :/ 'V_X IS   ',V_X,
       / '<ABC> IS ',<ABC>,
       / 'V_STR IS ',V_STR.

"""""""""""
