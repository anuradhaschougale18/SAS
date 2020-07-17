/*Copy dataset from work.cardata to test.cardata*/

data sasbatch.cardata;
set sasbatch.car;
run;

proc means data=sasbatch.cardata maxdec=2;
run;





/*bY SEPCIFIC VARIABLES*/

proc means data=sasbatch.cardata maxdec=2;
var mpg  rep78;
run;

/*Stating specific stats output*/

proc means data=sasbatch.cardata N mean StdDev	;
run;


/*Grouping by variable : First sort the dataset 
and store in the out dataset so as to preserve the previous dataset */

proc sort data=sasbatch.cardata out=sasbatch.xyz;
by mpg;
run;

proc means data=sasbatch.xyz;
by mpg;
run;
