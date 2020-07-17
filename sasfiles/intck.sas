/*
intck() : This function return difference between two dates
differnce:
1) year 2) semiyear 3) QTR 4) months  5) days

syntax:
intck(interval,startdate,enddate);

*/

data A;
date1="15APR2018"d;
date2="15FEB2020"d;
format date1 date2 ddmmyy10.;
nyear=intck("year",date1,date2);
semiyear=intck("semiyear",date1,date2);
nqtr=intck("QTR",date1,date2);
nmn=intck("month",date1,date2);
ndays=intck("day",date1,date2);
run;