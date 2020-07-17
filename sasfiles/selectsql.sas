/*
database=Library.
tables=datasets.

libraryname.datasetname;
sql
syntax:

proc sql;

   sql query;

quit;
*/

proc sql;
select * from sasbatch.car;
quit;

proc sql;
select make,rep78 from sasbatch.car;
quit;

proc sql;
select distinct make from sasbatch.car;
quit;

/*Aliasing*/

proc sql;
select make as makecompany from sasbatch.car;
quit; 

/*Arithmatic OPerations*/

proc sql;
select mpg,rep78,mpg+rep78 as total from sasbatch.car;
quit;

proc sql;
select mpg,rep78,mpg*rep78 as total from sasbatch.car;
quit;

/*Where clause-filtering*/

proc sql;
select * from sasbatch.car where mpg=14;
quit;

proc sql;
select * from sasbatch.car where mpg>=18;
quit;

proc sql;
select * from sasbatch.car where foreign<>0;
quit;

/*Where with logical Operators*/

proc sql;
select * from sasbatch.car where mpg>=18 and foreign<>0;
quit;

/*Aggregate functions*/

proc sql;
select sum(mpg) as total from sasbatch.car;
quit;

proc sql;
select max(mpg) as total from sasbatch.car;
quit;

proc sql;
select min(mpg) as total from sasbatch.car;
quit;

proc sql;
select avg(mpg) as total from sasbatch.car;
quit;

proc sql;
select count(mpg) as total from sasbatch.car;
quit;

proc sql;
select count(rep78) as total from sasbatch.car;
quit;


/*Group by*/
proc sql;
select make from sasbatch.car group by make;
quit;

proc sql;
select make,count(make) as count from sasbatch.car group by make;
quit;


proc sql;
select mpg from sasbatch.car group by mpg;
quit;

/*Group by with having
where op1 operator op2
*/

proc sql;
select make from sasbatch.car group by make having count(make)<2 ;
quit;


