data sasbatch.literals;
format d2 ddmmyy10.;
d1='1JUN2020';
d2='1JUN2020'd;
run;

proc contents data=sasbatch.literals;
run;

data sasbatch.literals;
format t TIME.;
t='10:11:15't;
run;

proc contents data=sasbatch.literals;
run;

data sasbatch.literals;
format dt DATETIME.;
dt='01JUN2020:10:13:24'dt;
run;

proc contents data=sasbatch.literals;
run;
