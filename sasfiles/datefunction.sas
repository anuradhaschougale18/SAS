data sasbatch.datefunction;
format d ddmmyy10.;
d=today(); /*date()*/
y=year(d);
mn=month(d);
dy=day(d);
wk=weekday(d);
run;


