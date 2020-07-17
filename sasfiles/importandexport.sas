
DATA sasbatch.sales;
infile'/folders/myfolders/sasuser.v94/sasbatch/sales.txt';
INPUT month qtr name$ 13. type$ units punit;
RUN;


/*TO convert dataset into CSV or excel
 we use PROC EXPORT procedure.
 
 syntax:
 
 PROC EXPORT DATA=libname.datasetname 
 OUTFILE="/folders/myfolders/sasuser.v94/sasbatch/sales.csv"
 dbms="csv";
 
 run;
*/


PROC EXPORT DATA=sasbatch.sales 
OUTFILE="/folders/myfolders/sasuser.v94/sasbatch/sales.csv"
dbms="csv";
run;


PROC EXPORT DATA=sasbatch.sales 
OUTFILE="/folders/myfolders/sasuser.v94/sasbatch/sales.xlsx"
dbms="xlsx";
run;
