DATA sasbatch.student;
INPUT rno name$ per;
DATALINES;
1  Harry 98.7
2  Mac   99.6
3  Rohit 78.5
4  Pooja 83.33
;
run;

proc print data=sasbatch.student;
title'Student details';
footnote'Table 1.1 showing student details';
run;