/*
Macros Variables:

1) Automatic Macros Variable: They have pre-defined Value.
2) User defined Macros Variable: 

1) Automatic variables:

   sysdate,sysday
   
   &macrovariable;

*/

%LET name=ITVEDANT;

data salesdata;
input name$ sales;
datalines;
Harry  15000
Mac    25000
pooja  24000
;
run;

proc print data=salesdata;
title" &name SALES REPORT &sysdate,&sysday";
run;



