data sasbatch.emp;
input name$ dept$ salary;
datalines;
harry  IT   10000
Mac    MKT  20000
Rohit  IT   30000
Shree  CS   40000
Ramesh CS   50000
;
run;

/*
Sub-queries: Query inside Query.

     Outer Query(inner query);

*/

/*
Find the name of the employees taking maximum salary.
1. Query to find maximum salary.
2. Query to find the name of the employee.
*/

proc sql;
select max(salary) from sasbatch.emp;
quit;

proc sql;
select name from sasbatch.emp where salary=50000;
quit;


proc sql;

select name from sasbatch.emp where salary=(select max(salary) from sasbatch.emp);

quit;

/*
Find the name of the employee taking second largest salary.

*/

proc sql;
select max(salary) from sasbatch.emp where salary<>(select max(salary) from sasbatch.emp);
quit;


proc sql;
select name from sasbatch.emp where salary=(select max(salary) from sasbatch.emp where salary<>(select max(salary) from sasbatch.emp));
quit;