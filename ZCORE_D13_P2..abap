REPORT ZCORE_D13_P2.

DATA : BEGIN OF dept,
         deptno    TYPE i,
         dname(20) TYPE c,
       END OF dept.

************DATA : BEGIN OF EMP,
************          EMPNO TYPE I,
************          ENAME(20) TYPE C,
************          DEPTNO TYPE I,
************          DNAME(20) TYPE C,
************          EMPDESIG(25) TYPE C,
************       END OF EMP.                                 """"""""""""""""   (OR)


DATA : BEGIN OF emp,                                                  """"""""""""""""""""   INCLUDING PRE DEFINED STRUCTURE
         empno     TYPE i,
         ename(20) TYPE c.
        INCLUDE STRUCTURE dept.
DATA:  empdesig(25) TYPE c,
       END OF emp.


emp-empno = 5.
emp-ename = 'RAHUL PILLAI'.
emp-deptno = 10.
emp-dname = 'ABAP'.
emp-empdesig = 'MANAGER'.


WRITE :/ emp-empno,
       / emp-ename,
       / emp-deptno,
       / emp-dname,
       / emp-empdesig.
