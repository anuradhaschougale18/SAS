


proc sql;

select * from sasbatch.car;

quit;

proc sql;
select make,mpg from sasbatch.car;
quit;

proc sql;
select distinct make from sasbatch.car;
quit;

proc sql;

select * from sasbatch.car where make="Audi";

quit;

proc sql;
select * from sasbatch.car where make="Cad" and mpg=14;
quit;

proc sql;
select mpg,rep78,mpg+rep78 as total from sasbatch.car;
quit;

proc sql;
select sum(mpg) as total from sasbatch.car;
run;

proc sql;
select avg(mpg) as res from sasbatch.car;
quit;

proc sql;
select min(mpg) from sasbatch.car;
quit;

proc sql;
select count(rep78) from sasbatch.car;
quit;

proc sql;
select make,count(make) as count from sasbatch.car group by make;
quit;

proc sql;
select make from sasbatch.car group by make having count(make)<2 ;
quit;


