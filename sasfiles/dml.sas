/*Inserting a record*/

proc sql;
insert into sasbatch.car(make,mpg,rep78,weight,foreign)
values("MARUTI",24,11,3560,0);
quit;

/*Deleting a record*/

proc sql;
delete from sasbatch.car where make="BMW";
quit;

/* Updating a record*/

proc sql;
update sasbatch.car SET Make="SWIFT" where Make="MARUT";
quit;