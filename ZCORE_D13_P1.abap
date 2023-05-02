REPORT ZCORE_D13_P1.

""""""""""""""""""" NESTED STRUCTURES """""""""""""""""""""""""""""""""""""
"""""" NESTED STRUCTURE - MEANS STRUCTURE WITHIN STRUCTURE.


DATA : BEGIN OF emp,
         empno        TYPE i,
         ename(20)    TYPE c,
         BEGIN OF dept,
           deptno    TYPE i,
           dname(20) TYPE c,
         END OF dept,
         empdesig(20) TYPE c,
       END OF emp.



emp-empno = 11.
emp-ename = 'RAJU'.
emp-dept-deptno = 122.
emp-empdesig = 'MANAGER'.

WRITE :/(20) 'EMPLOYEE NUMBER      : ', emp-empno LEFT-JUSTIFIED,
       /(20) 'EMPLOYEE NAME        : ', emp-ename,
       /(20) 'DEPARTMENT NUMBER    : ', emp-dept-deptno LEFT-JUSTIFIED,
       /(20) 'DEPARTMENT NAME      : ', emp-dept-dname,
       /(20) 'EMPLOYEE DESIGNATION : ', emp-empdesig.


