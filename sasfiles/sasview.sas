/*Creating Views*/

proc sql;
create view sasbatch.carview as select make,mpg from sasbatch.car;
quit;


/*Updating the view*/

proc sql;
update sasbatch.carview set Make="ABC" where Make="AMC";
quit;


/*Droppin the View*/

proc sql;
drop view sasbatch.carview;
quit;