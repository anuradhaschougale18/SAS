/*
D-Developer , AD-Assistant Developer
ntask: Number of Task Assigned.
ctask: Number of Task Completed.
*/

data sasbatch.firm;
input name$  post$  region$ ntask ctask gender$;
datalines;
Harry  D  WEST 10    6  Male
Mac    AD EAST  5    2  Male
Rohit  D  EAST  12   7  Male
Shree  D  EAST  15   11  Male
Ramesh AD WEST  10   7   Male
POOJA  AD EAST  14   10  Female
KIRAN  AD WEST  15   8   Male
Minal  D  EAST  12   5   Female
Tejal  AD WEST  10   4   Female
Kartiken AD WEST 7   4   Male
Mayuri   AD  WEST 14 8 Female
Mahesh  D    EAST 10 8 Male
Shrikant AD  EAST 12 6 Male
;
run;



PROC PRINT data=sasbatch.firm;
run;


/*
   REPORT PROCEDURE
   PROC REPORT DATA=libname.datasetname;
   COLUMN variable list;
   DEFINE variable/Option;
   run;
   
   option: GROUP,ACROSS,ORDER
*/

/*DEFAULT ALL COLUMNS*/

PROC REPORT DATA=sasbatch.firm;
RUN;




/*SPCIFIC COLUMNS*/

PROC REPORT DATA=sasbatch.firm;
COLUMN name region ntask;
run;

/*Only string*/

PROC REPORT DATA=sasbatch.firm;
COLUMN name region gender post;
run;

/*Only Numeric*/
PROC REPORT DATA=sasbatch.firm;
COLUMN  ntask ctask;
run;


/*GROUP OPTION*/

PROC REPORT DATA=sasbatch.firm;
DEFINE region/GROUP;
run;

PROC REPORT DATA=sasbatch.firm;
COLUMN region name post ntask ctask gender;
DEFINE region/GROUP;
run;

PROC REPORT DATA=sasbatch.firm;
COLUMN  post region name ntask ctask gender;
DEFINE post/GROUP;
run;

PROC REPORT DATA=sasbatch.firm;
COLUMN   region post name ntask ctask gender;
DEFINE region/GROUP;
DEFINE post/GROUP;
run;

PROC REPORT DATA=sasbatch.firm;
COLUMN   region post gender name ntask ctask ;
DEFINE region/GROUP;
DEFINE post/GROUP;
DEFINE gender/GROUP;
run;

/*
                     POST
              AD               D
region
East
West

*/

PROC REPORT DATA=sasbatch.firm;
COLUMN region post;
DEFINE region/GROUP;
DEFINE post/ACROSS;
RUN;

/*
                           POST
                 AD                      D
         ntask        ctask       ntask       ctask
region
East
West


*/

PROC REPORT DATA=sasbatch.firm;
COLUMN region post,(ntask ctask);
DEFINE region/GROUP;
DEFINE post/ACROSS;
RUN;



