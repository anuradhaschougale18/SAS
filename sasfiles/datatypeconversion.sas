Data sales;
input id name$ sales$ date$;
datalines;
1 Harry 150 15/05/2020
2 Mac 36 01/04/2020
3 Ramesh 29 23/05/2020
4 Pooja 350 22/02/2020
5 sheetal 125 16/05/2020
;
run;

proc contents data=sales;
run;









data salesnew(drop=date sales);
set sales;
format dt ddmmyy10.;
dt=input(date,ddmmyy10.);
s=input(sales,5.);
run;

proc contents data=salesnew;
run;




