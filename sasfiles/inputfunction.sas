/*input function
syntax: input(stringvalue,format);

*/


data sasbatch.input;
format dt ddmmyy10.;
d='01/06/2020';
dt=input(d,ddmmyy10.);
run;

proc contents data=sasbatch.input;
run;



data sasbatch.input;
x='231124565748';
y=input(x,12.);
run;

proc contents data=sasbatch.input;
run;

data sasbatch.input;
x='125.45';
y=input(x,5.);
run;

proc contents data=sasbatch.input;
run;