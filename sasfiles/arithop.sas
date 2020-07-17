/*Operators in SAS*/

DATA sasbatch.arith;
INPUT x y;
add=x+y;
sub=x-y;
mul=x*y;
div=x/y;
exp=x**y;
md=MOD(x,y);
DATALINES;
6  2
12  2
3   4
6  3
15 3
;
run;

proc print data=sasbatch.arith;
run;