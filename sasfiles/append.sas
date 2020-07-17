/*Appending:
while appending both the dataset must have same structure.
No of variables in both dataset must same in number as well as in 
same datatype.
*/
data employee1;
input eid$ name$ dept$;
datalines;
1  Harry  CS
2  Mac    MKT
3  Pooja  Tech
4  Rohit  IT
; 
run;

PROC CONTENTS data=employee1;
RUN;

data employee2;
input eid ename$ dept$;
datalines;
5  Sheetal  MKT
8  Shree    IT
10 Ramesh   Production
;
run;

PROC CONTENTS data=employee2;
RUN;

data employee;
SET employee1(Rename=(name=empname)) employee2(Rename=(ename=empname));
run;

PROC CONTENTS data=employee;
RUN;