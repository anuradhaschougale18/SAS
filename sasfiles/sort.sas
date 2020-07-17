/*
SORTING:

PROC SORT DATA=libraryname.datasetname OUT=libraryname.datasetname;
by Variable;
run;

Default : Ascending order
*/

PROC SORT DATA=sasbatch.employee OUT=sasbatch.sorted;
by descending sal;
run;

proc print data=sasbatch.sorted;
run;

PROC SORT DATA=sasbatch.employee OUT=sasbatch.sorted;
by gender sal;
run;

PROC SORT DATA=sasbatch.employee OUT=sasbatch.sorted;
by gender descending sal;
run;

